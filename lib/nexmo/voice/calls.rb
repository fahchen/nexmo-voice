module Nexmo::Voice
  class Calls
    RELATIVE_URL = '/call/json'

    attr_accessor :client

    def initialize(client = nil)
      raise "Can't create a call without Client" unless client
      @client = client
    end

    def create(entity = {})
      @client.get(self, entity)
    end

  end
end
