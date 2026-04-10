# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Size < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute units
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::Size::Units]
        required :units, enum: -> { HubSpotSDK::Cms::Size::Units }

        # @!attribute value
        #
        #   @return [Float]
        required :value, Float

        # @!method initialize(units:, value:)
        #   @param units [Symbol, HubSpotSDK::Models::Cms::Size::Units]
        #   @param value [Float]

        # @see HubSpotSDK::Models::Cms::Size#units
        module Units
          extend HubSpotSDK::Internal::Type::Enum

          PERCENT = :%
          CH = :ch
          CM = :cm
          EM = :em
          EX = :ex
          IN = :in
          LH = :lh
          MM = :mm
          PC = :pc
          PT = :pt
          PX = :px
          Q = :Q
          REM = :rem
          VH = :vh
          VMAX = :vmax
          VMIN = :vmin
          VW = :vw

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
