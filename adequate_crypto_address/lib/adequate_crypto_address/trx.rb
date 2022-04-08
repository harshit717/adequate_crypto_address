# frozen_string_literal: true

module AdequateCryptoAddress
  class Trx
    attr_reader :address

    def initialize(address_sring)
      @address = address_sring
    end

    def valid?(_type = nil)
      if valid_format?
        true
      else
        false
      end
    end

    private

    def valid_format?
      address.match(/^T[A-Za-z1-9]{33}$/)
    end
  end
  Tron = Trx
end
