# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Events
      # @return [HubSpotSDK::Resources::Events::Definitions]
      attr_reader :definitions

      # @return [HubSpotSDK::Resources::Events::Occurrences]
      attr_reader :occurrences

      # @return [HubSpotSDK::Resources::Events::Send]
      attr_reader :send_

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @definitions = HubSpotSDK::Resources::Events::Definitions.new(client: client)
        @occurrences = HubSpotSDK::Resources::Events::Occurrences.new(client: client)
        @send_ = HubSpotSDK::Resources::Events::Send.new(client: client)
      end
    end
  end
end
