class ArticleController < ApplicationController
  def index
    @articles = ArticleController.all
  end

  def create
    @article = Article.create(articles_params)
    redirect_to "/articles"
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    Article.find(params[:id]).update(articles_params)
    redirect_to "/articles/#{params[:id]}"
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to articles_path
  end

  private

  def recipes_params
    params.require(:articles)permit(:title, :body)
  end

end
