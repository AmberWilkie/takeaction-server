class Articles::ActionItemsController < ApplicationController

  def edit
    @action_item = ActionItem.find(params[:format])
  end

  def update
    @action_item = ActionItem.find(params[:action_item_id])
    @action_item.update(sanitized_params)
    if @action_item.save
      flash[:success] = 'Action updated.'
      redirect_to "/articles?id=#{@action_item.article.id}"
    end
  end

  private

  def sanitized_params
    params.require(:action_item).permit(:link, :info, :phone, :email)
  end
end