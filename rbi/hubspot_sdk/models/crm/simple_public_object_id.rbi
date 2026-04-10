# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class SimplePublicObjectID < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::SimplePublicObjectID,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the object.
        sig { returns(String) }
        attr_accessor :id

        # Contains the Id of a Public Object
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique ID of the object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
