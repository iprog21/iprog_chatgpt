# Iprog ChatGPT

<img src="https://github.com/IPROG-TECH/media-files/blob/main/iprogtech-logo.png" width="150" alt="IPROG TECH" align="right" />

This gem is provided by [**IPROG TECH**](https://www.iprog.tech/), an information technology company specializing in web development services using Ruby on Rails. IPROG TECH also offers free programming tutorials.

**Providing Good Quality Web Services:**
- Startup
- Maintenance
- Upgrading & Conversion


<a href="https://www.buymeacoffee.com/iprog21" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

## Installation

To install the gem, add this line to your application's Gemfile:
```ruby
gem 'iprog_chatgpt'
```

And then execute:
```ruby
$ bundle install
```

Or install it yourself as:
```ruby
$ gem install iprog_chatgpt
```

## Usage
```ruby
require 'iprog_chatgpt'

client = IprogChatgpt::Client.new("your_openai_api_key")
# or
# client = IprogChatgpt::Client.new("your_openai_api_key", "gpt-4o")
# default model: "gpt-3.5-turbo"

response = client.chat("Hello, how are you?")
puts response
```

## Rspec Testing
Export OpenAI API Key:
```ruby
export OPENAI_API_KEY=your_secret_api_key
```

Run Spec:
```ruby
$ rspec spec/iprog_chatgpt/client_spec.rb
```

Response:
```ruby
{"id"=>"chatcmpl-A7W1GixPUxu5qYsGf6cEb5TQZs4DL", "object"=>"chat.completion", "created"=>1726354742, "model"=>"gpt-3.5-turbo-0125", "choices"=>[{"index"=>0, "message"=>{"role"=>"assistant", "content"=>"Hello! How can I assist you today?", "refusal"=>nil}, "logprobs"=>nil, "finish_reason"=>"stop"}], "usage"=>{"prompt_tokens"=>12, "completion_tokens"=>9, "total_tokens"=>21, "completion_tokens_details"=>{"reasoning_tokens"=>0}}, "system_fingerprint"=>nil}
.

Finished in 1.25 seconds (files took 0.09689 seconds to load)
1 example, 0 failures
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/iprog21/iprog_chatgpt.

## License
This gem is available as open source under the terms of the [MIT License](./LICENSE.txt).

## Code of Conduct
This project has adopted the [Contributor Covenant Code of Conduct](./CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to iprog.tech@gmail.com.
