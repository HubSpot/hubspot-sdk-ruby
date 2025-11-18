# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalVersionPublicEmail < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of emails.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::VersionPublicEmail>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::VersionPublicEmail] }

        # @!attribute total
        #   Total number of emails.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Response object for collections of marketing emails with pagination information.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::VersionPublicEmail>] Collection of emails.
        #
        #   @param total [Integer] Total number of emails.
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
