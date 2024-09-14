# frozen_string_literal: true

require 'net/http'
require 'json'

module IprogChatgpt
  class Client
    API_ENDPOINT = "https://api.openai.com/v1/chat/completions"
    attr_reader :api_key, :model

    def initialize(api_key, model = "gpt-3.5-turbo")
      @api_key = api_key
      @model   = model
    end

    def chat(prompt)
      uri = URI(API_ENDPOINT)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      request = Net::HTTP::Post.new(uri.path, { 'Content-Type' => 'application/json', 'Authorization' => "Bearer #{api_key}" })
      request.body = { model: model, messages: [{ role: "user", content: prompt }] }.to_json

      response = http.request(request)
      
      JSON.parse(response.body)
    end
  end
end

