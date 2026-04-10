# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class CmsAuditLoggingExportFilters < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_type
        #
        #   @return [Array<String>]
        required :object_type, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :objectType

        # @!method initialize(object_type:)
        #   @param object_type [Array<String>]
      end
    end

    CmsAuditLoggingExportFilters = Cms::CmsAuditLoggingExportFilters
  end
end
