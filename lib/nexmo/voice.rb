require 'rest_client'

require 'nexmo/voice/version'
require 'nexmo/voice/calls'
require 'nexmo/voice/ttses'

module Nexmo
  module Voice
    BASE_URL = 'https://rest.nexmo.com'

    class Client
      attr_accessor :api_key, :api_secret,
        :calls, :ttses

      def initialize(api_key, api_secret)
        @api_key, @api_secret = api_key, api_secret
        @calls = Calls.new(self)
        @ttses = Ttses.new(self)
      end

      def get(resource, entity = {})
        uri = "#{BASE_URL}#{resource.class::RELATIVE_URL}"
        params = entity.merge({
          api_key: @api_key,
          api_secret: @api_secret
        })

        RestClient.get(uri, params: params)
      end
    end

  end
end
