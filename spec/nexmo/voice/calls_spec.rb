require 'spec_helper'

describe Nexmo::Voice::Calls do
  let(:client) { Nexmo::Voice::Client.new('api_key', 'api_secret') }
  let(:entity) { { to: '8618000000001', answer_url: 'http://test.com/answer_url' } }

  before do
    response_json = {
      'call-id' => 'd7d74aed5c754a992586c5baf01ed24d',
      'to' => '8618600000001',
      'status' => '0',
      'error-text' => 'Success'
    }
    stub_request(:get, %r(https://rest.nexmo.com/call/json.*)).to_return(body: response_json)
  end

  it 'not raises errors' do
    expect {
      client.calls.create(entity)
    }.not_to raise_error
  end
end
