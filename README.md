# Semaphore

This gem provides a simple and intuitive Ruby API wrapper for interacting with the Semaphore API. With this gem, you can easily send messages, manage accounts, and perform other operations using the Semaphore API.

## Usage

- Get your API key from https://semaphore.co/account

### Quickstart

For a quick test you can pass your token directly to a new client:

```rb
semaphore = Semaphore::Client.new(api_key: '[API KEY]', sender_name: '[SENDER NAME]')

# Sending a message
semaphore.messages(
  parameters: {
    message: '[YOUR MESSAGE]',
    number: '[NUMBER]'
  }
)

# Sending a Bulk Message
semaphore.messages(
  parameters: {
    message: '[YOUR MESSAGE]',
    number: '[NUMBER], [NUMBER], [NUMBER], [NUMBER]' # Comma separated
  }
)

# Sending an OTP
semaphore.otp(
  parameters: {
    message: 'Thanks for registering. Your OTP Code is {otp}.',
    number: '[NUMBER]',
    code: 1234
  }
)
```

### Using Config

To enhance your setup, you can configure the gem with your API keys in a more secure manner, such as in an semaphore.rb initializer file. This approach prevents hardcoding secrets directly into your codebase. Instead, consider using a gem like [dotenv](https://github.com/motdotla/dotenv) to safely pass the keys into your environments.

```rb
# config/initializers/semaphore.rb

Semaphore.configure do |config|
  config.api_key = ENV.fetch("SEMAPHORE_API_KEY")
  config.sender_name = ENV.fetch("SEMAPHORE_SENDERNAME")
end
```

After configuring the API key, you can simply create a new client:

```rb
Semaphore::Client.new.messages(
  parameters: {
    message: '[YOUR MESSAGE]',
    number: '[NUMBER]'
  }
)
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "ruby-semaphore"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install ruby-semaphore
```

## Contributing

Contributions are welcome! Please follow the guidelines outlined in the CONTRIBUTING.md file.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
