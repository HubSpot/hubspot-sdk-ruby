# typed: strong

module HubspotSDK
  module Models
    module Crm
      class AssociationRecordLimitResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::AssociationRecordLimitResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::AtLimitRecordSample]) }
        attr_accessor :at_limit_from_record_samples

        sig { returns(Integer) }
        attr_accessor :limit

        sig { returns(T::Array[HubspotSDK::Crm::NearLimitRecordSample]) }
        attr_accessor :near_limit_from_record_samples

        sig { returns(Integer) }
        attr_accessor :total_records_at_limit

        sig { returns(Integer) }
        attr_accessor :total_records_near_limit

        sig do
          params(
            at_limit_from_record_samples:
              T::Array[HubspotSDK::Crm::AtLimitRecordSample::OrHash],
            limit: Integer,
            near_limit_from_record_samples:
              T::Array[HubspotSDK::Crm::NearLimitRecordSample::OrHash],
            total_records_at_limit: Integer,
            total_records_near_limit: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          at_limit_from_record_samples:,
          limit:,
          near_limit_from_record_samples:,
          total_records_at_limit:,
          total_records_near_limit:
        )
        end

        sig do
          override.returns(
            {
              at_limit_from_record_samples:
                T::Array[HubspotSDK::Crm::AtLimitRecordSample],
              limit: Integer,
              near_limit_from_record_samples:
                T::Array[HubspotSDK::Crm::NearLimitRecordSample],
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
