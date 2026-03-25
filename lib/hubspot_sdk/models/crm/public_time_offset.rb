# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicTimeOffset < HubspotSDK::Internal::Type::BaseModel
        # @!attribute amount
        #   The numerical value representing the quantity of the time offset.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute offset_direction
        #   Indicates the direction of the time offset, such as forward or backward.
        #
        #   @return [String]
        required :offset_direction, String, api_name: :offsetDirection

        # @!attribute time_unit
        #   Specifies the unit of time for the offset, such as days, hours, or minutes.
        #
        #   @return [String]
        required :time_unit, String, api_name: :timeUnit

        # @!method initialize(amount:, offset_direction:, time_unit:)
        #   @param amount [Integer] The numerical value representing the quantity of the time offset.
        #
        #   @param offset_direction [String] Indicates the direction of the time offset, such as forward or backward.
        #
        #   @param time_unit [String] Specifies the unit of time for the offset, such as days, hours, or minutes.
      end
    end
  end
end
