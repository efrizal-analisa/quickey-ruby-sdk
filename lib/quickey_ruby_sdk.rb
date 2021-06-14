# frozen_string_literal: true

require_relative "quickey_ruby_sdk/version"
require_relative "quickey_ruby_sdk/config"
require 'httparty'
require 'json'

module QuickeyRubySdk 
  class App
      attr_reader :api_base
      attr_reader :api_key
  
      def initialize(api_key: nil)
        @api_key = api_key
        @api_base = QuickeyRubySdk::API_BASE
      end

      def getMetaData
        JSON.parse HTTParty.post(@api_base+"/auth/apiKey", body: { "apiKey": @api_key }).body
      end

      def getAccessToken(email)
        response = JSON.parse HTTParty.post(@api_base+"/loginRegister", body: { "email": email }).body
        response["access_token"]
      end
  end
end
