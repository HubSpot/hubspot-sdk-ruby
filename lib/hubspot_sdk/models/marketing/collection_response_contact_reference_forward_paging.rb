# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponseContactReferenceForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of contact references, each containing an identifier for a contact.
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::ContactReference>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::ContactReference] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Marketing::ContactReference>] An array of contact references, each containing an identifier for a contact.
        #
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
