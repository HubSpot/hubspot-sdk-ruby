# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Account
      # @return [HubspotSDK::Resources::Account::Activity]
      attr_reader :activity

      # @return [HubspotSDK::Resources::Account::Details]
      attr_reader :details

      # @return [HubspotSDK::Resources::Account::Usage]
      attr_reader :usage

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @activity = HubspotSDK::Resources::Account::Activity.new(client: client)
        @details = HubspotSDK::Resources::Account::Details.new(client: client)
        @usage = HubspotSDK::Resources::Account::Usage.new(client: client)
      end
    end
  end
end
