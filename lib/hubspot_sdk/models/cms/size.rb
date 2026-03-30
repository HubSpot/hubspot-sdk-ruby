# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Size < HubspotSDK::Internal::Type::BaseModel
        # @!attribute units
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Size::Units]
        required :units, enum: -> { HubspotSDK::Cms::Size::Units }

        # @!attribute value
        #
        #   @return [Float]
        required :value, Float

        # @!method initialize(units:, value:)
        #   @param units [Symbol, HubspotSDK::Models::Cms::Size::Units]
        #   @param value [Float]

        # @see HubspotSDK::Models::Cms::Size#units
        module Units
          extend HubspotSDK::Internal::Type::Enum

          Unknown0 = :%
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
