# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        sig { returns(HubspotSDK::Resources::Cms::MediaBridge::Events) }
        attr_reader :events

        sig { returns(HubspotSDK::Resources::Cms::MediaBridge::Groups) }
        attr_reader :groups

        sig do
          returns(HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings)
        end
        attr_reader :integrator_settings

        sig { returns(HubspotSDK::Resources::Cms::MediaBridge::Properties) }
        attr_reader :properties

        sig { returns(HubspotSDK::Resources::Cms::MediaBridge::Schemas) }
        attr_reader :schemas

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
