# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class FeatureFlags
        # @return [HubspotSDK::Resources::CRM::FeatureFlags::Apps]
        attr_reader :apps

        # @return [HubspotSDK::Resources::CRM::FeatureFlags::Portals]
        attr_reader :portals

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @apps = HubspotSDK::Resources::CRM::FeatureFlags::Apps.new(client: client)
          @portals = HubspotSDK::Resources::CRM::FeatureFlags::Portals.new(client: client)
        end
      end
    end
  end
end
