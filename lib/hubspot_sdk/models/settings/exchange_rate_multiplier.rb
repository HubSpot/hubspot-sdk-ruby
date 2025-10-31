# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class ExchangeRateMultiplier < HubspotSDK::Internal::Type::BaseModel
        # @!attribute conversion_rate
        #
        #   @return [Float]
        required :conversion_rate, Float, api_name: :conversionRate

        # @!attribute effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time, api_name: :effectiveAt

        # @!method initialize(conversion_rate:, effective_at: nil)
        #   @param conversion_rate [Float]
        #   @param effective_at [Time]
      end
    end
  end
end
