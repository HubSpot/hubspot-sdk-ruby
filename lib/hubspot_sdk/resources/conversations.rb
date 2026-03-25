# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      # @return [HubspotSDK::Resources::Conversations::CustomChannels]
      attr_reader :custom_channels

      # @return [HubspotSDK::Resources::Conversations::VisitorIdentification]
      attr_reader :visitor_identification

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @custom_channels = HubspotSDK::Resources::Conversations::CustomChannels.new(client: client)
        @visitor_identification = HubspotSDK::Resources::Conversations::VisitorIdentification.new(client: client)
      end
    end
  end
end
