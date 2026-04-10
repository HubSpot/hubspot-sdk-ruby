# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Conversations
      # @return [HubSpotSDK::Resources::Conversations::CustomChannels]
      attr_reader :custom_channels

      # @return [HubSpotSDK::Resources::Conversations::VisitorIdentification]
      attr_reader :visitor_identification

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @custom_channels = HubSpotSDK::Resources::Conversations::CustomChannels.new(client: client)
        @visitor_identification = HubSpotSDK::Resources::Conversations::VisitorIdentification.new(client: client)
      end
    end
  end
end
