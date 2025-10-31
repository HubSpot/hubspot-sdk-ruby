# typed: strong

module HubspotSDK
  module Models
    module CRM
      class MultiAssociatedObjectWithLabel < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::MultiAssociatedObjectWithLabel,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::AssociationSpecWithLabel]) }
        attr_accessor :association_types

        sig { returns(String) }
        attr_accessor :to_object_id

        sig do
          params(
            association_types:
              T::Array[HubspotSDK::CRM::AssociationSpecWithLabel::OrHash],
            to_object_id: String
          ).returns(T.attached_class)
        end
        def self.new(association_types:, to_object_id:)
        end

        sig do
          override.returns(
            {
              association_types:
                T::Array[HubspotSDK::CRM::AssociationSpecWithLabel],
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
