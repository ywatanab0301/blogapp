class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  private
  def articles_params
    params.permit(:title, :content)
  end
end
