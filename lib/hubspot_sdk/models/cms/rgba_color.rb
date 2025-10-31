# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class RgbaColor < HubspotSDK::Internal::Type::BaseModel
        # @!attribute a
        #   Alpha.
        #
        #   @return [Float]
        required :a, Float

        # @!attribute b
        #   Blue.
        #
        #   @return [Integer]
        required :b, Integer

        # @!attribute g
        #   Green.
        #
        #   @return [Integer]
        required :g, Integer

        # @!attribute r
        #   Red.
        #
        #   @return [Integer]
        required :r, Integer

        # @!method initialize(a:, b:, g:, r:)
        #   A color defined by RGB values.
        #
        #   @param a [Float] Alpha.
        #
        #   @param b [Integer] Blue.
        #
        #   @param g [Integer] Green.
        #
        #   @param r [Integer] Red.
      end
    end
  end
end
