class Api::V1::ArticlesController < ApplicationController
  def index
    render json: {message: 'API message', params: params}
  end
end