# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class CmsAuditLoggingExportSettings < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute format_
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::CmsAuditLoggingExportSettings::Format]
        required :format_,
                 enum: -> {
                   HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format
                 },
                 api_name: :format

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute recipient_user_ids
        #
        #   @return [Array<Integer>]
        required :recipient_user_ids,
                 HubSpotSDK::Internal::Type::ArrayOf[Integer],
                 api_name: :recipientUserIds

        # @!attribute should_mark_export_file_as_sensitive
        #
        #   @return [Boolean]
        required :should_mark_export_file_as_sensitive,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :shouldMarkExportFileAsSensitive

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute filters
        #
        #   @return [HubSpotSDK::Models::Cms::CmsAuditLoggingExportFilters, nil]
        optional :filters, -> { HubSpotSDK::Cms::CmsAuditLoggingExportFilters }

        # @!attribute partition
        #
        #   @return [Integer, nil]
        optional :partition, Integer

        # @!attribute user_id
        #
        #   @return [Integer, nil]
        optional :user_id, Integer, api_name: :userId

        # @!attribute user_time_zone
        #
        #   @return [String, nil]
        optional :user_time_zone, String, api_name: :userTimeZone

        # @!method initialize(email:, format_:, portal_id:, recipient_user_ids:, should_mark_export_file_as_sensitive:, type:, filters: nil, partition: nil, user_id: nil, user_time_zone: nil)
        #   @param email [String]
        #   @param format_ [Symbol, HubSpotSDK::Models::Cms::CmsAuditLoggingExportSettings::Format]
        #   @param portal_id [Integer]
        #   @param recipient_user_ids [Array<Integer>]
        #   @param should_mark_export_file_as_sensitive [Boolean]
        #   @param type [String]
        #   @param filters [HubSpotSDK::Models::Cms::CmsAuditLoggingExportFilters]
        #   @param partition [Integer]
        #   @param user_id [Integer]
        #   @param user_time_zone [String]

        # @see HubSpotSDK::Models::Cms::CmsAuditLoggingExportSettings#format_
        module Format
          extend HubSpotSDK::Internal::Type::Enum

          CSV = :CSV
          XLS = :XLS
          XLSX = :XLSX

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    CmsAuditLoggingExportSettings = Cms::CmsAuditLoggingExportSettings
  end
end
