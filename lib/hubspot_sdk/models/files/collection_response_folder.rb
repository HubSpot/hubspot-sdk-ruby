# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      class CollectionResponseFolder < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Files::Folder>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Files::Folder] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Files::Folder>]
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
