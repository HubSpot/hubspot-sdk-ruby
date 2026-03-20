# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      # @return [HubspotSDK::Resources::Crm::Objects]
      attr_reader :objects

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @objects = HubspotSDK::Resources::Crm::Objects.new(client: client)
      end
    end
  end
end
