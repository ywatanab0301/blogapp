class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comments_params[:text], article_id: comments_params[:article_id], user_id: current_user.id)
    redirect_to "/articles/#{@comment.article.id}"
  end

  private
  def comments_params
    params.require(:comment).permit(:text).merge(article_id: params[:article_id])
  end
end
