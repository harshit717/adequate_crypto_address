# frozen_string_literal: true

module AdequateCryptoAddress
  class Ada
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
      # address.match(/addr1[A-Za-z1-9]{84}/)
      # (/T[A-Za-z1-9]{33}/)
      address.match(/^(addr1|[13])[a-zA-HJ-NP-Z0-9]{95}$/) ||  address.match(/^(DdzFFzCqrhs|[13])[a-zA-HJ-NP-Z0-9]{93}$/)

    end
  end
  Cardano = Ada
end
