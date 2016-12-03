class ArticlesController < ApplicationController
  before_action :gather_form_items, only: [:new, :edit]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.cause = Cause.find(params[:article][:cause].to_i)
    if @article.save
      flash[:success] = 'Item saved.'
      gather_form_items
      render :edit
    else
      flash[:error] = 'Item could not be saved.'
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :link)
  end

  def gather_form_items
    @causes = Cause.all
    @actions = Action.all
  end
end
