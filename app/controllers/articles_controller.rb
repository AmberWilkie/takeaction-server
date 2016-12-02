class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = 'Item saved.'
      redirect_to root_path
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :link, :cause)
  end
end
