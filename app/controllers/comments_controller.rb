class CommentsController < ApplicationController
  def create
    Comment.create(params[:id])
  end
end
