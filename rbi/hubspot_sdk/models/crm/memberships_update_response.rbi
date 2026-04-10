# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class MembershipsUpdateResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::MembershipsUpdateResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The IDs of the records that were `missing` (e.g. did not exist in the portal)
        # and so were not `added` or `removed`.
        sig { returns(T::Array[String]) }
        attr_accessor :record_ids_missing

        # The IDs of the records that were `removed` from the list.
        sig { returns(T::Array[String]) }
        attr_accessor :record_ids_removed

        sig { returns(T::Array[String]) }
        attr_accessor :records_ids_added

        sig do
          params(
            record_ids_missing: T::Array[String],
            record_ids_removed: T::Array[String],
            records_ids_added: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The IDs of the records that were `missing` (e.g. did not exist in the portal)
          # and so were not `added` or `removed`.
          record_ids_missing:,
          # The IDs of the records that were `removed` from the list.
          record_ids_removed:,
          records_ids_added:
        )
        end

        sig do
          override.returns(
            {
              record_ids_missing: T::Array[String],
              record_ids_removed: T::Array[String],
              records_ids_added: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
