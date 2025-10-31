# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        # @return [HubspotSDK::Resources::Cms::MediaBridge::Events]
        attr_reader :events

        # @return [HubspotSDK::Resources::Cms::MediaBridge::Groups]
        attr_reader :groups

        # @return [HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings]
        attr_reader :integrator_settings

        # @return [HubspotSDK::Resources::Cms::MediaBridge::Properties]
        attr_reader :properties

        # @return [HubspotSDK::Resources::Cms::MediaBridge::Schemas]
        attr_reader :schemas

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @events = HubspotSDK::Resources::Cms::MediaBridge::Events.new(client: client)
          @groups = HubspotSDK::Resources::Cms::MediaBridge::Groups.new(client: client)
          @integrator_settings = HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings.new(client: client)
          @properties = HubspotSDK::Resources::Cms::MediaBridge::Properties.new(client: client)
          @schemas = HubspotSDK::Resources::Cms::MediaBridge::Schemas.new(client: client)
        end
      end
    end
  end
end
