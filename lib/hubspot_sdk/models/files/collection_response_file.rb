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
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Files::File>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
