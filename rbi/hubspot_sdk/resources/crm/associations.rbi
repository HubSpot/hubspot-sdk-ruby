# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        sig { returns(HubspotSDK::Resources::Crm::Associations::Batch) }
        attr_reader :batch

        sig { returns(HubspotSDK::Resources::Crm::Associations::Schema) }
        attr_reader :schema

        sig { returns(HubspotSDK::Resources::Crm::Associations::V4) }
        attr_reader :v4

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
