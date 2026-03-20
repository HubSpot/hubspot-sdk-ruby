# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Account
      # @return [HubspotSDK::Resources::Account::Activity]
      attr_reader :activity

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @activity = HubspotSDK::Resources::Account::Activity.new(client: client)
      end
    end
  end
end
