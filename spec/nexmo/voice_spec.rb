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

  it 'sets the api_config' do
    expect(client.api_config).to match({ api_key: api_key, api_secret: api_secret })
  end

  it 'sets the default timeout' do
    expect(client.nexmo_adaptor.options[:read_timeout]).to eq 10
    expect(client.nexmo_adaptor.options[:open_timeout]).to eq 10
  end

  it 'sets the timeout' do
    another_client = Nexmo::Voice::Client.new api_key, api_secret, read_timeout: 2, open_timeout: 1
    expect(another_client.nexmo_adaptor.options[:read_timeout]).to eq 2
    expect(another_client.nexmo_adaptor.options[:open_timeout]).to eq 1
  end
end
