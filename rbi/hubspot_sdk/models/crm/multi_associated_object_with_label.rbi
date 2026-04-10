# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class MultiAssociatedObjectWithLabel < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::MultiAssociatedObjectWithLabel,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::AssociationSpecWithLabel]) }
        attr_accessor :association_types

        # The unique identifier for the target object in the association.
        sig { returns(String) }
        attr_accessor :to_object_id

        # Represents an object that is associated with multiple other objects, with
        # optional context.
        sig do
          params(
            association_types:
              T::Array[HubSpotSDK::Crm::AssociationSpecWithLabel::OrHash],
            to_object_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          association_types:,
          # The unique identifier for the target object in the association.
          to_object_id:
        )
        end

        sig do
          override.returns(
            {
              association_types:
                T::Array[HubSpotSDK::Crm::AssociationSpecWithLabel],
              to_object_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
