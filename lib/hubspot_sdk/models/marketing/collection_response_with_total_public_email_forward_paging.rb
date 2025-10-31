# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalPublicEmailForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of emails.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicEmail>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicEmail] }

        # @!attribute total
        #   Total number of content emails.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   Response object for collections of marketing emails with pagination information.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicEmail>] Collection of emails.
        #
        #   @param total [Integer] Total number of content emails.
        #
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
