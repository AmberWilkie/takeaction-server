class Api::V1::ArticlesController < ActionController::Base

  def index
    unless params[:cause].nil?
      cause = Cause.find_by(name: params[:cause].titleize)
      @items = Article.where(cause: cause)
    else
      @items = Article.all.limit(20)
    end
    # Here we would put in all kinds of other search things so we could winnow down by peoples' interests. The search information should be available to us in params (and created by the front-end client in their request.)
    render json: @items
  end
end