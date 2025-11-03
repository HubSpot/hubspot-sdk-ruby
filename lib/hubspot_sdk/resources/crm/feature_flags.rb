# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class FeatureFlags
        # @return [HubspotSDK::Resources::Crm::FeatureFlags::Apps]
        attr_reader :apps

        # @return [HubspotSDK::Resources::Crm::FeatureFlags::Portals]
        attr_reader :portals

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @apps = HubspotSDK::Resources::Crm::FeatureFlags::Apps.new(client: client)
          @portals = HubspotSDK::Resources::Crm::FeatureFlags::Portals.new(client: client)
        end
      end
    end
  end
end
