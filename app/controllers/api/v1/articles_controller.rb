class Api::V1::ArticlesController < ActionController::Base

  def index
    cause = Cause.find_by(name: params[:cause])
    @items = Article.where(cause: cause)
    # Here we would put in all kinds of other search things so we could winnow down by peoples' interests.
    render json: @items
  end
end