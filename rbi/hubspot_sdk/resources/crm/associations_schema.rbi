# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class AssociationsSchema
        sig { returns(HubspotSDK::Resources::Crm::AssociationsSchema::Labels) }
        attr_reader :labels

        sig { returns(HubspotSDK::Resources::Crm::AssociationsSchema::Limits) }
        attr_reader :limits

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
