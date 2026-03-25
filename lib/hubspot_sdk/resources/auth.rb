# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Auth
      # @return [HubspotSDK::Resources::Auth::OAuth]
      attr_reader :oauth

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @oauth = HubspotSDK::Resources::Auth::OAuth.new(client: client)
      end
    end
  end
end
