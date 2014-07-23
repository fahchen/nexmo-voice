require 'rest_client'

require 'nexmo/voice/version'

module Nexmo
  module Voice
    BASE_URL = 'https://rest.nexmo.com'

    class Client
      attr_accessor :api_key, :api_secret

      def initialize(api_key, api_secret)
        @api_key, @api_secret = api_key, api_secret
      end
    end

  end
end
