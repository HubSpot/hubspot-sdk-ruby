# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      class CollectionResponseFile < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Files::File>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Files::File] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Files::File>]
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
