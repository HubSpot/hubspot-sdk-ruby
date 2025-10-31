# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicTimeOffset < HubspotSDK::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute offset_direction
      #
      #   @return [String]
      required :offset_direction, String, api_name: :offsetDirection

      # @!attribute time_unit
      #
      #   @return [String]
      required :time_unit, String, api_name: :timeUnit

      # @!method initialize(amount:, offset_direction:, time_unit:)
      #   @param amount [Integer]
      #   @param offset_direction [String]
      #   @param time_unit [String]
    end
  end
end
