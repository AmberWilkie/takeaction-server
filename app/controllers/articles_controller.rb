class ArticlesController < ApplicationController

  def new
    @article = Article.new
    @causes = Cause.all
  end

  def create
    @article = Article.new(article_params)
    @article.cause = Cause.find(params[:article][:cause].to_i)
    if @article.save
      flash[:success] = 'Item saved.'
      redirect_to root_path
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :link)
  end
end
