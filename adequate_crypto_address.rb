# frozen_string_literal: true

require 'utils/bech32'
require 'utils/bch'

require 'altcoin'
require 'bch'
require 'eth'
require 'btc'
require 'xrp'
require 'dash'
require 'zec'
require 'ltc'
require 'bnb'
require 'trx'
require 'ada'
require 'sol'

module AdequateCryptoAddress
  class UnknownCurrency < StandardError; end
  module_function

  def valid?(address, currency, type = nil)
    address(address, currency).valid?(type)
  end

  def address(address, currency)
    AdequateCryptoAddress.const_get(currency.capitalize).new(address)
  rescue NameError
    raise UnknownCurrency, "Wrong currency #{currency}"
  end

  def address_type(address, currency)
    AdequateCryptoAddress.const_get(currency.capitalize).new(address).address_type
  end
end
