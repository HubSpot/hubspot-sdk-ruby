# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseContactReferenceForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of contact references, each containing an identifier for a contact.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::ContactReference>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::ContactReference] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Marketing::ContactReference>] An array of contact references, each containing an identifier for a contact.
        #
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
