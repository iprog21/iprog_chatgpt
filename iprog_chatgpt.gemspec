# frozen_string_literal: true
require_relative "lib/iprog_chatgpt/version"

Gem::Specification.new do |spec|
  spec.name          = "iprog_chatgpt"
  spec.version       = IprogChatgpt::VERSION
  spec.authors       = ["Jayson Presto"]
  spec.email         = ["jaysonpresto.iprog21@gmail.com"]
  spec.summary       = "A Ruby gem for interacting with OpenAI's ChatGPT API."
  spec.description   = "Provides a simple client for sending messages to OpenAI's ChatGPT and receiving responses."
  spec.homepage      = "https://github.com/iprog21/iprog_chatgpt"
  spec.license       = "MIT"
  
  # Specify files that should be included in the gem package
  spec.files         = Dir["lib/**/*", "README.md", "CHANGELOG.md", "CODE_OF_CONDUCT.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  # Specify the Ruby version requirement
  spec.required_ruby_version = ">= 2.6"

  # Specify metadata for additional information
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/iprog21/iprog_chatgpt/blob/main/CHANGELOG.md"
  spec.metadata["coc_uri"] = "https://github.com/iprog21/iprog_chatgpt/blob/main/CODE_OF_CONDUCT.md"
  spec.metadata["source_code_uri"] = "https://github.com/iprog21/iprog_chatgpt.git"

  # Runtime dependencies
  spec.add_dependency "json", "~> 2.3"
  spec.add_dependency "net-http", "~> 0.1"

  # Development dependencies
  spec.add_development_dependency "rspec", "~> 3.10"
end
