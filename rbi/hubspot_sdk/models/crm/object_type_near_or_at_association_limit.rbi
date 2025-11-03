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

        sig { returns(T::Boolean) }
        attr_accessor :has_records_at_limit

        sig { returns(T::Boolean) }
        attr_accessor :has_records_near_limit

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(String) }
        attr_accessor :plural_label

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
          has_records_at_limit:,
          has_records_near_limit:,
          object_type_id:,
          plural_label:,
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
