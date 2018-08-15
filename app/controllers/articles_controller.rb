class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(title: articles_params[:title], content: articles_params[:content], user_id: current_user.id)
  end

  private
  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
