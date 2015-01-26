require 'spec_helper'

RSpec.describe Nexmo::Voice do
  it 'returns the base url' do
    expect(Nexmo::Voice::BASE_URL).to eq 'https://api.nexmo.com'
  end
end

RSpec.describe Nexmo::Voice::Client do
  let(:api_key) { 'test_api_key' }
  let(:api_secret) { 'test_api_secret' }
  let(:client) { Nexmo::Voice::Client.new api_key, api_secret }

  it 'sets the api_key' do
    expect(client.api_key).to eq api_key
  end

  it 'sets the api_secret' do
    expect(client.api_secret).to eq api_secret
  end
end
