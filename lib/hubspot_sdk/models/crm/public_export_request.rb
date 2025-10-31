# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module PublicExportRequest
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::CRM::PublicExportViewRequest }

        variant -> { HubspotSDK::CRM::PublicExportListRequest }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::CRM::PublicExportViewRequest, HubspotSDK::Models::CRM::PublicExportListRequest)]
      end
    end
  end
end
