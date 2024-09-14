# frozen_string_literal: true

require "spec_helper"

RSpec.describe IprogChatgpt::Client do
  let(:api_key) { ENV["OPENAI_API_KEY"] }
  let(:client) { IprogChatgpt::Client.new(api_key) }

  describe "#chat" do
    it "returns a response from ChatGPT API" do
     client   = IprogChatgpt::Client.new(api_key)
     # or
     # client = IprogChatgpt::Client.new(api_key, "gpt-4o")
     # default model: "gpt-3.5-turbo"

     response = client.chat("Hi, gpt.")
     
     puts response.inspect
     expect(response.dig("choices", 0, "message", "content")).to eq("Hello! How can I assist you today?")
    end
  end
end

