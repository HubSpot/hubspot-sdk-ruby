# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePublicImportResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicImportResponse>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicImportResponse] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::PublicImportResponse>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
