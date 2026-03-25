# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class OptionDecorations < HubspotSDK::Internal::Type::BaseModel
        # @!attribute color
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::OptionDecorations::Color]
        required :color, enum: -> { HubspotSDK::Cms::OptionDecorations::Color }

        # @!method initialize(color:)
        #   @param color [Symbol, HubspotSDK::Models::Cms::OptionDecorations::Color]

        # @see HubspotSDK::Models::Cms::OptionDecorations#color
        module Color
          extend HubspotSDK::Internal::Type::Enum

          BLACK = :BLACK
          BLUE = :BLUE
          BLUE_LIGHT = :BLUE_LIGHT
          GRAY = :GRAY
          GREEN = :GREEN
          GREEN_LIGHT = :GREEN_LIGHT
          ORANGE = :ORANGE
          ORANGE_LIGHT = :ORANGE_LIGHT
          PINK = :PINK
          PINK_LIGHT = :PINK_LIGHT
          PURPLE = :PURPLE
          PURPLE_LIGHT = :PURPLE_LIGHT
          RED = :RED
          RED_LIGHT = :RED_LIGHT
          TEAL = :TEAL
          TEAL_LIGHT = :TEAL_LIGHT
          YELLOW = :YELLOW
          YELLOW_LIGHT = :YELLOW_LIGHT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
