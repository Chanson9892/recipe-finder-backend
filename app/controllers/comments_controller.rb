class CommentsController < ApplicationController

    def index
        comments = Comment.where(user_id: @user.id)
        render json: comments
    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.find_or_create_by(comment_params) do |comm|
            comm.user_id = @user.id
        end
        if @comment.valid?
            redirect_to path(@comments)
        else
            flash[:errors] = @comment.errors.full_messages
            redirect_to new_comment_path
        end
        render json: @comment
    end

    # def create
    #     @comment = Comment.new(comment_params)
    #     @comment.user_id = session[:user_id]
    #     @comment.save
    #     if @comment.valid?
    #         redirect_to path(@comments)
    #     else
    #         flash[:errors] = @comment.errors.full_messages
    #         redirect_to new_comment_path
    #     end
    # end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :id, :content)
    end

end
