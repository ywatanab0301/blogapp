class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @username = user.username
    @articles = current_user.articles
  end
end
