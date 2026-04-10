# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponsePublicImportErrorForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicImportError>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicImportError] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Crm::PublicImportError>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
