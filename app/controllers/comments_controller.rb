class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def create
        @comment = Comment.create(comment_params)
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
        params.require(:comment).permit(:content, :favorite_id)
    end

end
