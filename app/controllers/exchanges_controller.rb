class ExchangesController < ApplicationController
  def index
  end

  def convert
    value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).perform
    render json: {"value": value}
  end

  def convert_bitcoin
    value = ExchangeServiceBitcoin.new(params[:source_currency], params[:amount]).perform
    render json: {"value": value}
  end
end