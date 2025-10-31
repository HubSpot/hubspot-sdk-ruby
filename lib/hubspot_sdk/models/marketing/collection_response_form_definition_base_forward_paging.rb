# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseFormDefinitionBaseForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::HubSpotFormDefinition>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::HubSpotFormDefinition] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Marketing::HubSpotFormDefinition>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
