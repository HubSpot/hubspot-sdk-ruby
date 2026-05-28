# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module PublicExportRequest
        extend HubSpotSDK::Internal::Type::Union

        discriminator :exportType

        variant :VIEW, -> { HubSpotSDK::Crm::PublicExportViewRequest }

        variant :LIST, -> { HubSpotSDK::Crm::PublicExportListRequest }

        # @!method self.variants
        #   @return [Array(HubSpotSDK::Models::Crm::PublicExportViewRequest, HubSpotSDK::Models::Crm::PublicExportListRequest)]
      end
    end
  end
end
