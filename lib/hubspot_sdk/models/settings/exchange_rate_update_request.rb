# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      class ExchangeRateUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   A unique identifier for the exchange rate being updated
        #
        #   @return [String]
        required :id, String

        # @!attribute conversion_rate
        #   The updated conversion rate between the to and from currency code of this
        #   exchange rate.
        #
        #   @return [Float]
        required :conversion_rate, Float, api_name: :conversionRate

        # @!attribute effective_at
        #   The date the exchange rate will be in effect.
        #
        #   @return [Time, nil]
        optional :effective_at, Time, api_name: :effectiveAt

        # @!method initialize(id:, conversion_rate:, effective_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Settings::ExchangeRateUpdateRequest} for more details.
        #
        #   @param id [String] A unique identifier for the exchange rate being updated
        #
        #   @param conversion_rate [Float] The updated conversion rate between the to and from currency code of this exchan
        #
        #   @param effective_at [Time] The date the exchange rate will be in effect.
      end
    end
  end
end
