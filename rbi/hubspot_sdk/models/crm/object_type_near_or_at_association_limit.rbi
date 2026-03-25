# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ObjectTypeNearOrAtAssociationLimit < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ObjectTypeNearOrAtAssociationLimit,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates whether there are records that have reached the association limit.
        sig { returns(T::Boolean) }
        attr_accessor :has_records_at_limit

        # Indicates whether there are records that are approaching the association limit.
        sig { returns(T::Boolean) }
        attr_accessor :has_records_near_limit

        # The unique identifier for the object type.
        sig { returns(String) }
        attr_accessor :object_type_id

        # The plural form of the label for the object type.
        sig { returns(String) }
        attr_accessor :plural_label

        # The singular form of the label for the object type.
        sig { returns(String) }
        attr_accessor :singular_label

        sig do
          params(
            has_records_at_limit: T::Boolean,
            has_records_near_limit: T::Boolean,
            object_type_id: String,
            plural_label: String,
            singular_label: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether there are records that have reached the association limit.
          has_records_at_limit:,
          # Indicates whether there are records that are approaching the association limit.
          has_records_near_limit:,
          # The unique identifier for the object type.
          object_type_id:,
          # The plural form of the label for the object type.
          plural_label:,
          # The singular form of the label for the object type.
          singular_label:
        )
        end

        sig do
          override.returns(
            {
              has_records_at_limit: T::Boolean,
              has_records_near_limit: T::Boolean,
              object_type_id: String,
              plural_label: String,
              singular_label: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
