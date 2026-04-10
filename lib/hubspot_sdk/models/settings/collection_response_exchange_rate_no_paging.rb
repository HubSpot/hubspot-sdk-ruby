# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      class CollectionResponseExchangeRateNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Settings::ExchangeRate>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::ExchangeRate] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Settings::ExchangeRate>]
      end
    end
  end
end
