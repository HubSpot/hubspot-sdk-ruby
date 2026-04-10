# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Auth
      # @return [HubSpotSDK::Resources::Auth::OAuth]
      attr_reader :oauth

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @oauth = HubSpotSDK::Resources::Auth::OAuth.new(client: client)
      end
    end
  end
end
