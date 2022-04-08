# frozen_string_literal: true

module AdequateCryptoAddress
  class Sol
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
      address.match(/^[1-9A-HJ-NP-Za-km-z]{43,44}$/)
    end
  end
  Solana = Sol
end
