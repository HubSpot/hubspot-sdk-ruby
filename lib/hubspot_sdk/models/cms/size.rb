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

          CH = :CH
          CM = :CM
          EM = :EM
          EX = :EX
          IN = :IN
          LH = :LH
          MM = :MM
          PC = :PC
          PERCENTAGE = :PERCENTAGE
          PT = :PT
          PX = :PX
          Q = :Q
          REM = :REM
          VH = :VH
          VMAX = :VMAX
          VMIN = :VMIN
          VW = :VW

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
