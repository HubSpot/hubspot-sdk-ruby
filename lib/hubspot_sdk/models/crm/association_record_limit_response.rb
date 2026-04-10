# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Limits#get_association_records_limits_by_object_type
      class AssociationRecordLimitResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute at_limit_from_record_samples
        #
        #   @return [Array<HubSpotSDK::Models::Crm::AtLimitRecordSample>]
        required :at_limit_from_record_samples,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AtLimitRecordSample] },
                 api_name: :atLimitFromRecordSamples

        # @!attribute limit
        #   The maximum number of associations allowed for records.
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute near_limit_from_record_samples
        #
        #   @return [Array<HubSpotSDK::Models::Crm::NearLimitRecordSample>]
        required :near_limit_from_record_samples,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::NearLimitRecordSample] },
                 api_name: :nearLimitFromRecordSamples

        # @!attribute total_records_at_limit
        #   The total number of records that have reached their association limit.
        #
        #   @return [Integer]
        required :total_records_at_limit, Integer, api_name: :totalRecordsAtLimit

        # @!attribute total_records_near_limit
        #   The total number of records that are approaching their association limit.
        #
        #   @return [Integer]
        required :total_records_near_limit, Integer, api_name: :totalRecordsNearLimit

        # @!method initialize(at_limit_from_record_samples:, limit:, near_limit_from_record_samples:, total_records_at_limit:, total_records_near_limit:)
        #   @param at_limit_from_record_samples [Array<HubSpotSDK::Models::Crm::AtLimitRecordSample>]
        #
        #   @param limit [Integer] The maximum number of associations allowed for records.
        #
        #   @param near_limit_from_record_samples [Array<HubSpotSDK::Models::Crm::NearLimitRecordSample>]
        #
        #   @param total_records_at_limit [Integer] The total number of records that have reached their association limit.
        #
        #   @param total_records_near_limit [Integer] The total number of records that are approaching their association limit.
      end
    end
  end
end
