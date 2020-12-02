class CommentsController < ApplicationController

    def index
        comments = Comment.where(user_id: @user.id, favorite_id: @favorite.id)
        render json: comments
    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def create
        @comment = Comment.find_or_create_by(comment_params) do |comm|
            comm.user_id = @user.id
            comm.favorite_id = @favorite.id
        end
        if @comment.valid?
            render json: @comment
        else
            render json: { error: comment.errors.messages }
        end
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        if @comment.valid?
            render json: { comment: @comment}
        else
            render json: { error: 'failed to edit comment' }, status: :not_acceptable
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        commentId = @comment.id
        @comment.destroy
        render json: {message:"Zap! comment deleted", commentId:commentId}
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :id, :content, :favorite_id)
    end

end
