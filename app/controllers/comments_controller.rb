class CommentsController < ApplicationController
    before_action :get_comment, only: [:show]

    def index
        @comments = Comment.all
    end

    def show
    end

    def new
        @comment = Comment.new
        @recipes = Recipe.all
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = session[:user_id]
        @comment.save
        if @comment.valid?
            redirect_to path(@comments)
        else
            flash[:errors] = @comment.errors.full_messages
            redirect_to new_comment_path
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :id, :content)
    end

    def get_comment
        @comment = Comment.find(params[:id])
    end
end
