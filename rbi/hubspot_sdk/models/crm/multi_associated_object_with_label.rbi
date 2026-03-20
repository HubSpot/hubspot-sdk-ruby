# typed: strong

module HubspotSDK
  module Models
    module Crm
      class MultiAssociatedObjectWithLabel < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::MultiAssociatedObjectWithLabel,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::AssociationSpecWithLabel]) }
        attr_accessor :association_types

        # Target unique ID of the object.
        sig { returns(String) }
        attr_accessor :to_object_id

        # Represents an object that is associated with multiple other objects, with
        # optional context.
        sig do
          params(
            association_types:
              T::Array[HubspotSDK::Crm::AssociationSpecWithLabel::OrHash],
            to_object_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          association_types:,
          # Target unique ID of the object.
          to_object_id:
        )
        end

        sig do
          override.returns(
            {
              association_types:
                T::Array[HubspotSDK::Crm::AssociationSpecWithLabel],
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
