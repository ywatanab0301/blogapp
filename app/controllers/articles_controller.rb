class ArticlesController < ApplicationController
  def index

  end

  def new
    @articles = Article.all
  end
end
