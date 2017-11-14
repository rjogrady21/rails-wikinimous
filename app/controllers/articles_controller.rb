class ArticlesController < ApplicationController

  before_action :set_id, only: [:show, :edit, :destroy, :update]

  def index
    @articles = Article.all
  end

  def show
  end

  def edit
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to @article
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.delete
    redirect_to articles_path
  end

  private

  def set_id
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
