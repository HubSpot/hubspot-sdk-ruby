# typed: strong

module HubspotSDK
  module Models
    module CRM
      class MembershipChangeRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::MembershipChangeRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :record_ids_to_add

        sig { returns(T::Array[String]) }
        attr_accessor :record_ids_to_remove

        # The IDs of the records to add and/or remove from a list.
        sig do
          params(
            record_ids_to_add: T::Array[String],
            record_ids_to_remove: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(record_ids_to_add:, record_ids_to_remove:)
        end

        sig do
          override.returns(
            {
              record_ids_to_add: T::Array[String],
              record_ids_to_remove: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
