class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @username = user.username
    @articles = user.articles.page(params[:page]).per(6)
  end
end
