# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseContactReferenceForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::ContactReference>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::ContactReference] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Marketing::ContactReference>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
