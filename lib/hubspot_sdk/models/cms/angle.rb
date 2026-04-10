# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Angle < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute units
        #   The unit of measurement for the angle.
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::Angle::Units]
        required :units, enum: -> { HubSpotSDK::Cms::Angle::Units }

        # @!attribute value
        #   The numerical representation of the angle.
        #
        #   @return [Float]
        required :value, Float

        # @!method initialize(units:, value:)
        #   @param units [Symbol, HubSpotSDK::Models::Cms::Angle::Units] The unit of measurement for the angle.
        #
        #   @param value [Float] The numerical representation of the angle.

        # The unit of measurement for the angle.
        #
        # @see HubSpotSDK::Models::Cms::Angle#units
        module Units
          extend HubSpotSDK::Internal::Type::Enum

          DEG = :deg
          GRAD = :grad
          RAD = :rad
          TURN = :turn

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
