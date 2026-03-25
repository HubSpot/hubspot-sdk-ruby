# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CmsAuditLoggingExportFilters < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_type
        #
        #   @return [Array<String>]
        required :object_type, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :objectType

        # @!method initialize(object_type:)
        #   @param object_type [Array<String>]
      end
    end

    CmsAuditLoggingExportFilters = Cms::CmsAuditLoggingExportFilters
  end
end
