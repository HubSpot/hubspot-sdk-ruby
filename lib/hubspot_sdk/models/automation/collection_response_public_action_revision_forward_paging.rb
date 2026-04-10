# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class CollectionResponsePublicActionRevisionForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicActionRevision>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionRevision] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Automation::PublicActionRevision>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
