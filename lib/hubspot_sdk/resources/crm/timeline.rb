# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Timeline
        # @return [HubspotSDK::Resources::CRM::Timeline::Events]
        attr_reader :events

        # @return [HubspotSDK::Resources::CRM::Timeline::Templates]
        attr_reader :templates

        # @return [HubspotSDK::Resources::CRM::Timeline::Tokens]
        attr_reader :tokens

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @events = HubspotSDK::Resources::CRM::Timeline::Events.new(client: client)
          @templates = HubspotSDK::Resources::CRM::Timeline::Templates.new(client: client)
          @tokens = HubspotSDK::Resources::CRM::Timeline::Tokens.new(client: client)
        end
      end
    end
  end
end
