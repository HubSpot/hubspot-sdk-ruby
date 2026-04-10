# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      class CollectionResponseExchangeRateForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Settings::ExchangeRate>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::ExchangeRate] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Settings::ExchangeRate>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
