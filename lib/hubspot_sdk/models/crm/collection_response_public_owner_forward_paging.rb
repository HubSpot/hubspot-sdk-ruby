# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponsePublicOwnerForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicOwner>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicOwner] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Crm::PublicOwner>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
