require 'spec_helper'

describe Nexmo::Voice::Ttses do
  let(:client) { Nexmo::Voice::Client.new('api_key', 'api_secret') }
  let(:entity) { { to: '8618000000001', text: 'Hello from gem' } }
  let(:response_json) {
    {
      'call-id' => 'd7d74aed5c754a992586c5baf01ed24d',
      'to' => '8618600000001',
      'status' => '0',
      'error-text' => 'Success'
    }
  }

  it 'not raises errors' do
    stub_request(:get, %r{https://api.nexmo.com/tts/json.*})
      .to_return(body: response_json.to_json)

    expect {
      client.ttses.create(entity)
    }.not_to raise_error
  end

  it 'timeouts' do
    stub_request(:get, %r{https://api.nexmo.com/tts/json.*})
      .to_timeout

    expect {
      client.ttses.create(entity)
    }.to raise_error(RestClient::Exceptions::ReadTimeout)
  end
end
