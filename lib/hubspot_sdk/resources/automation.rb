# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      # @return [HubspotSDK::Resources::Automation::Actions]
      attr_reader :actions

      # @return [HubspotSDK::Resources::Automation::Sequences]
      attr_reader :sequences

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @actions = HubspotSDK::Resources::Automation::Actions.new(client: client)
        @sequences = HubspotSDK::Resources::Automation::Sequences.new(client: client)
      end
    end
  end
end
