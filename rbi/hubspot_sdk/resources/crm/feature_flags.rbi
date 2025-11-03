# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class FeatureFlags
        sig { returns(HubspotSDK::Resources::Crm::FeatureFlags::Apps) }
        attr_reader :apps

        sig { returns(HubspotSDK::Resources::Crm::FeatureFlags::Portals) }
        attr_reader :portals

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
