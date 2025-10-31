# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Limits#get_association_records_limits_by_object_type
      class AssociationRecordLimitResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute at_limit_from_record_samples
        #
        #   @return [Array<HubspotSDK::Models::CRM::AtLimitRecordSample>]
        required :at_limit_from_record_samples,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::AtLimitRecordSample] },
                 api_name: :atLimitFromRecordSamples

        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute near_limit_from_record_samples
        #
        #   @return [Array<HubspotSDK::Models::CRM::NearLimitRecordSample>]
        required :near_limit_from_record_samples,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::NearLimitRecordSample] },
                 api_name: :nearLimitFromRecordSamples

        # @!attribute total_records_at_limit
        #
        #   @return [Integer]
        required :total_records_at_limit, Integer, api_name: :totalRecordsAtLimit

        # @!attribute total_records_near_limit
        #
        #   @return [Integer]
        required :total_records_near_limit, Integer, api_name: :totalRecordsNearLimit

        # @!method initialize(at_limit_from_record_samples:, limit:, near_limit_from_record_samples:, total_records_at_limit:, total_records_near_limit:)
        #   @param at_limit_from_record_samples [Array<HubspotSDK::Models::CRM::AtLimitRecordSample>]
        #   @param limit [Integer]
        #   @param near_limit_from_record_samples [Array<HubspotSDK::Models::CRM::NearLimitRecordSample>]
        #   @param total_records_at_limit [Integer]
        #   @param total_records_near_limit [Integer]
      end
    end
  end
end
