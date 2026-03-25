# typed: strong

module HubspotSDK
  module Models
    module Crm
      class LabelsBetweenObjectPair < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::LabelsBetweenObjectPair,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the source object in the association.
        sig { returns(String) }
        attr_accessor :from_object_id

        # The type ID of the source object in the association.
        sig { returns(String) }
        attr_accessor :from_object_type_id

        # An array of labels associated with the relationship between the objects.
        sig { returns(T::Array[String]) }
        attr_accessor :labels

        # The ID of the target object in the association.
        sig { returns(String) }
        attr_accessor :to_object_id

        # The type ID of the target object in the association.
        sig { returns(String) }
        attr_accessor :to_object_type_id

        # The relationship descriptors applicable between two object types.
        sig do
          params(
            from_object_id: String,
            from_object_type_id: String,
            labels: T::Array[String],
            to_object_id: String,
            to_object_type_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the source object in the association.
          from_object_id:,
          # The type ID of the source object in the association.
          from_object_type_id:,
          # An array of labels associated with the relationship between the objects.
          labels:,
          # The ID of the target object in the association.
          to_object_id:,
          # The type ID of the target object in the association.
          to_object_type_id:
        )
        end

        sig do
          override.returns(
            {
              from_object_id: String,
              from_object_type_id: String,
              labels: T::Array[String],
              to_object_id: String,
              to_object_type_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
