# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Associations
        sig { returns(HubspotSDK::Resources::CRM::Associations::Batch) }
        attr_reader :batch

        sig { returns(HubspotSDK::Resources::CRM::Associations::Schema) }
        attr_reader :schema

        sig { returns(HubspotSDK::Resources::CRM::Associations::V4) }
        attr_reader :v4

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
