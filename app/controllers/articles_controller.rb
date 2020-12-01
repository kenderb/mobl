class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    redirect_to @article if @article.save
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
