require 'spec_helper'

RSpec.describe Nexmo::Voice do
  it 'returns the base url' do
    expect(Nexmo::Voice::BASE_URL).to eq 'https://rest.nexmo.com'
  end
end
