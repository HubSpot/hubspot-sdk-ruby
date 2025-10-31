# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class FeatureFlags
        sig { returns(HubspotSDK::Resources::CRM::FeatureFlags::Apps) }
        attr_reader :apps

        sig { returns(HubspotSDK::Resources::CRM::FeatureFlags::Portals) }
        attr_reader :portals

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
