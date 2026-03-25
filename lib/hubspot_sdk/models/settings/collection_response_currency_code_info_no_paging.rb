# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Currencies#list_codes
      class CollectionResponseCurrencyCodeInfoNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Settings::CurrencyCodeInfo>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::CurrencyCodeInfo] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Settings::CurrencyCodeInfo>]
      end
    end
  end
end
