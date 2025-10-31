# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class CollectionResponseFile < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Files::File>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Files::File] }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::Paging, nil]
        optional :paging, -> { HubspotSDK::Marketing::Paging }

        # @!method initialize(results:, paging: nil)
        #   Collections of files
        #
        #   @param results [Array<HubspotSDK::Models::Files::File>]
        #
        #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
      end
    end
  end
end
