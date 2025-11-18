# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class CollectionResponseFolder < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Files::Folder>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Files::Folder] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Files::Folder>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
