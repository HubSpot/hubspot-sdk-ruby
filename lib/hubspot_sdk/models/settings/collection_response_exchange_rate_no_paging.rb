# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class CollectionResponseExchangeRateNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Settings::ExchangeRate>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::ExchangeRate] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Settings::ExchangeRate>]
      end
    end
  end
end
