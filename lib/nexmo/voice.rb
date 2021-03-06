require 'rest_client'

require 'nexmo/voice/version'
require 'nexmo/voice/calls'
require 'nexmo/voice/ttses'

module Nexmo
  module Voice
    BASE_URL = 'https://api.nexmo.com'.freeze

    class Client
      DEFAULT_TIMEOUT = 10

      attr_accessor :nexmo_adaptor, :api_config,
                    :calls, :ttses

      def initialize(api_key, api_secret, options = {})
        @nexmo_adaptor =
          RestClient::Resource.new(
            BASE_URL,
            read_timeout: options.fetch(:read_timeout) { DEFAULT_TIMEOUT },
            open_timeout: options.fetch(:open_timeout) { DEFAULT_TIMEOUT }
          )

        @api_config = {
          api_key: api_key,
          api_secret: api_secret
        }

        @calls = Calls.new(self)
        @ttses = Ttses.new(self)
      end

      def get(resource, entity = {})
        @nexmo_adaptor[resource.class::RELATIVE_URL]
          .get(params: entity.merge(@api_config))
      end
    end
  end
end
