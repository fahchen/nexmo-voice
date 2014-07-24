# Nexmo::Voice

A Ruby wrapper for the Nexmo Voice API.

## Installation

Add this line to your application's Gemfile:

    gem 'nexmo-voice'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nexmo-voice

## Usage

```ruby
  # Initialize your client
  client = Nexmo::Voice::Client.new 'your_key', 'your_secret'
  
  # Make a tts call with minimum options
  options = {
    to: 'recipient_number',
    text: 'Hello from gem.'
  }
  client.ttses.create options
```

## Contributing

1. Fork it ( https://github.com/fahchen/nexmo-voice/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
