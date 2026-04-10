# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module PublicExportRequest
        extend HubSpotSDK::Internal::Type::Union

        variant -> { HubSpotSDK::Crm::PublicExportViewRequest }

        variant -> { HubSpotSDK::Crm::PublicExportListRequest }

        # @!method self.variants
        #   @return [Array(HubSpotSDK::Models::Crm::PublicExportViewRequest, HubSpotSDK::Models::Crm::PublicExportListRequest)]
      end
    end
  end
end
