# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#list_revisions
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
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::Paging, nil]
        optional :paging, -> { HubspotSDK::Marketing::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Response object for collections of marketing emails with pagination information.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::VersionPublicEmail>] Collection of emails.
        #
        #   @param total [Integer] Total number of emails.
        #
        #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
      end
    end
  end
end
