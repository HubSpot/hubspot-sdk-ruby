# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Events
      # @return [HubspotSDK::Resources::Events::Definitions]
      attr_reader :definitions

      # @return [HubspotSDK::Resources::Events::Occurrences]
      attr_reader :occurrences

      # @return [HubspotSDK::Resources::Events::Send]
      attr_reader :send_

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @definitions = HubspotSDK::Resources::Events::Definitions.new(client: client)
        @occurrences = HubspotSDK::Resources::Events::Occurrences.new(client: client)
        @send_ = HubspotSDK::Resources::Events::Send.new(client: client)
      end
    end
  end
end
