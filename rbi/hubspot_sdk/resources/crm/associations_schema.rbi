# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class AssociationsSchema
        sig { returns(HubSpotSDK::Resources::Crm::AssociationsSchema::Labels) }
        attr_reader :labels

        sig { returns(HubSpotSDK::Resources::Crm::AssociationsSchema::Limits) }
        attr_reader :limits

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
