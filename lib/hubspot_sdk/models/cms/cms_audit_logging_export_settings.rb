# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CmsAuditLoggingExportSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute format_
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::CmsAuditLoggingExportSettings::Format]
        required :format_,
                 enum: -> {
                   HubspotSDK::Cms::CmsAuditLoggingExportSettings::Format
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
                 HubspotSDK::Internal::Type::ArrayOf[Integer],
                 api_name: :recipientUserIds

        # @!attribute should_mark_export_file_as_sensitive
        #
        #   @return [Boolean]
        required :should_mark_export_file_as_sensitive,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :shouldMarkExportFileAsSensitive

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute filters
        #
        #   @return [HubspotSDK::Models::Cms::CmsAuditLoggingExportFilters, nil]
        optional :filters, -> { HubspotSDK::Cms::CmsAuditLoggingExportFilters }

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
        #   @param format_ [Symbol, HubspotSDK::Models::Cms::CmsAuditLoggingExportSettings::Format]
        #   @param portal_id [Integer]
        #   @param recipient_user_ids [Array<Integer>]
        #   @param should_mark_export_file_as_sensitive [Boolean]
        #   @param type [String]
        #   @param filters [HubspotSDK::Models::Cms::CmsAuditLoggingExportFilters]
        #   @param partition [Integer]
        #   @param user_id [Integer]
        #   @param user_time_zone [String]

        # @see HubspotSDK::Models::Cms::CmsAuditLoggingExportSettings#format_
        module Format
          extend HubspotSDK::Internal::Type::Enum

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
