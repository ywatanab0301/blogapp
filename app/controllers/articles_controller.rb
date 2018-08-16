class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:user)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(title: articles_params[:title], content: articles_params[:content], user_id: current_user.id)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(articles_params) if current_user.id == article.user_id
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy if current_user.id == article.user_id
  end

  private
  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
