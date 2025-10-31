# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicBatchMigrationMapping < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicBatchMigrationMapping,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::PublicMigrationMapping]) }
        attr_accessor :legacy_list_ids_to_ids_mapping

        # A list of legacy list ids that were passed in but not found. It will be empty if
        # no id's are missing
        sig { returns(T::Array[String]) }
        attr_accessor :missing_legacy_list_ids

        sig do
          params(
            legacy_list_ids_to_ids_mapping:
              T::Array[HubspotSDK::CRM::PublicMigrationMapping::OrHash],
            missing_legacy_list_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          legacy_list_ids_to_ids_mapping:,
          # A list of legacy list ids that were passed in but not found. It will be empty if
          # no id's are missing
          missing_legacy_list_ids:
        )
        end

        sig do
          override.returns(
            {
              legacy_list_ids_to_ids_mapping:
                T::Array[HubspotSDK::CRM::PublicMigrationMapping],
              missing_legacy_list_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
