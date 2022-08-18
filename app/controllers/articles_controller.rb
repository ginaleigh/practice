class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    respond_to do |format|
      format.html
      format.json { render json: @articles.as_json }
    end
  end

  def show
    @article = Article.find(params[:id])
  end
end
