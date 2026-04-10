# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Automation
      # @return [HubSpotSDK::Resources::Automation::Actions]
      attr_reader :actions

      # @return [HubSpotSDK::Resources::Automation::Sequences]
      attr_reader :sequences

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @actions = HubSpotSDK::Resources::Automation::Actions.new(client: client)
        @sequences = HubSpotSDK::Resources::Automation::Sequences.new(client: client)
      end
    end
  end
end
