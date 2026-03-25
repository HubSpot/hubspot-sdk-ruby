# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      # @return [HubspotSDK::Resources::Marketing::Campaigns]
      attr_reader :campaigns

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @campaigns = HubspotSDK::Resources::Marketing::Campaigns.new(client: client)
      end
    end
  end
end
