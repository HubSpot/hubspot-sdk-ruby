# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class NumberFieldValidation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute max_allowed_digits
        #
        #   @return [Integer]
        required :max_allowed_digits, Integer, api_name: :maxAllowedDigits

        # @!attribute min_allowed_digits
        #
        #   @return [Integer]
        required :min_allowed_digits, Integer, api_name: :minAllowedDigits

        # @!method initialize(max_allowed_digits:, min_allowed_digits:)
        #   Describes how a numeric value should be validated.
        #
        #   @param max_allowed_digits [Integer]
        #   @param min_allowed_digits [Integer]
      end
    end
  end
end
