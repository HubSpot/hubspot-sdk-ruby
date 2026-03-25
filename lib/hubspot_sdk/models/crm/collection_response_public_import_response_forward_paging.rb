# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePublicImportResponseForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicImportResponse>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicImportResponse] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::PublicImportResponse>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
