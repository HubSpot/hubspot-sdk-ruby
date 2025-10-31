# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CollectionResponseAPIFlowListingForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIFlowListing>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIFlowListing] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Automation::APIFlowListing>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
