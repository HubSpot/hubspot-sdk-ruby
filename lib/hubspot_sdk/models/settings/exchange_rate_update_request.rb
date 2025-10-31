# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class ExchangeRateUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute conversion_rate
        #
        #   @return [Float]
        required :conversion_rate, Float, api_name: :conversionRate

        # @!attribute effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time, api_name: :effectiveAt

        # @!method initialize(id:, conversion_rate:, effective_at: nil)
        #   @param id [String]
        #   @param conversion_rate [Float]
        #   @param effective_at [Time]
      end
    end
  end
end
