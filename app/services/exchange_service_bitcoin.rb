require 'rest-client'
require 'json'

class ExchangeServiceBitcoin
  def initialize(source_currency, amount)
    @source_currency = source_currency
    @amount = amount.to_f
  end


  def perform
    begin
      url = "https://blockchain.info/tobtc?currency=#{@source_currency}&value=#{@amount.to_i}"
      res = RestClient.get url
      
      value = res
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end