class ArticlesController < ApplicationController
  before_action :gather_form_items, only: [:new, :edit]

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.cause = Cause.find(params[:article][:cause].to_i)
    params[:article][:action_ids].each do |action|
      unless action.blank?
        ActionItem.create(article: @article, action_id: action.to_i)
      end
    end

    if @article.save
      flash[:success] = 'Item saved.'
      # binding.pry
      # render :edit_actions
      gather_form_items
      render :edit
    else
      flash[:error] = 'Item could not be saved.'
      render :new
    end
  end

  def edit
    @article = Article.find(params[:format])
  end

  def update
    @article = Article.find(params[:article_id].to_i)
    @article.update(article_params)
    @article.cause = Cause.find(params[:article][:cause].to_i)
    if @article.save
      flash[:success] = 'Your item was updated.'
      gather_form_items
      render :show
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :link, :date, :location, :category)
  end

  def gather_form_items
    @causes = Cause.all
    @actions = Action.all
    @categories = %w('event', 'article')
  end
end
