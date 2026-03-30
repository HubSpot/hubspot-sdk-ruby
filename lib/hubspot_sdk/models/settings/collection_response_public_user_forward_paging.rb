# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class CollectionResponsePublicUserForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Settings::PublicUser>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::PublicUser] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Settings::PublicUser>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
