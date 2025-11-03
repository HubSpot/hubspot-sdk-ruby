# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Timeline
        # @return [HubspotSDK::Resources::Crm::Timeline::Events]
        attr_reader :events

        # @return [HubspotSDK::Resources::Crm::Timeline::Templates]
        attr_reader :templates

        # @return [HubspotSDK::Resources::Crm::Timeline::Tokens]
        attr_reader :tokens

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @events = HubspotSDK::Resources::Crm::Timeline::Events.new(client: client)
          @templates = HubspotSDK::Resources::Crm::Timeline::Templates.new(client: client)
          @tokens = HubspotSDK::Resources::Crm::Timeline::Tokens.new(client: client)
        end
      end
    end
  end
end
