# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class AssociationRecordLimitResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::AssociationRecordLimitResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::AtLimitRecordSample]) }
        attr_accessor :at_limit_from_record_samples

        # The maximum number of associations allowed for records.
        sig { returns(Integer) }
        attr_accessor :limit

        sig { returns(T::Array[HubSpotSDK::Crm::NearLimitRecordSample]) }
        attr_accessor :near_limit_from_record_samples

        # The total number of records that have reached their association limit.
        sig { returns(Integer) }
        attr_accessor :total_records_at_limit

        # The total number of records that are approaching their association limit.
        sig { returns(Integer) }
        attr_accessor :total_records_near_limit

        sig do
          params(
            at_limit_from_record_samples:
              T::Array[HubSpotSDK::Crm::AtLimitRecordSample::OrHash],
            limit: Integer,
            near_limit_from_record_samples:
              T::Array[HubSpotSDK::Crm::NearLimitRecordSample::OrHash],
            total_records_at_limit: Integer,
            total_records_near_limit: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          at_limit_from_record_samples:,
          # The maximum number of associations allowed for records.
          limit:,
          near_limit_from_record_samples:,
          # The total number of records that have reached their association limit.
          total_records_at_limit:,
          # The total number of records that are approaching their association limit.
          total_records_near_limit:
        )
        end

        sig do
          override.returns(
            {
              at_limit_from_record_samples:
                T::Array[HubSpotSDK::Crm::AtLimitRecordSample],
              limit: Integer,
              near_limit_from_record_samples:
                T::Array[HubSpotSDK::Crm::NearLimitRecordSample],
              total_records_at_limit: Integer,
              total_records_near_limit: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
