# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      # @see HubSpotSDK::Resources::Settings::Currencies#list_codes
      class CollectionResponseCurrencyCodeInfoNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Settings::CurrencyCodeInfo>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::CurrencyCodeInfo] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Settings::CurrencyCodeInfo>]
      end
    end
  end
end
