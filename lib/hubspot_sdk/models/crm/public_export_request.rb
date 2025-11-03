# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module PublicExportRequest
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Crm::PublicExportViewRequest }

        variant -> { HubspotSDK::Crm::PublicExportListRequest }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Crm::PublicExportViewRequest, HubspotSDK::Models::Crm::PublicExportListRequest)]
      end
    end
  end
end
