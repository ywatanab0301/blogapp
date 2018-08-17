class ArticlesController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @articles = Article.includes(:user).page(params[:page]).per(6)
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
    @comments = @article.comments.includes(:user)
    @comment = Comment.new

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

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
