# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class SideOrCorner < HubspotSDK::Internal::Type::BaseModel
        # @!attribute horizontal_side
        #   Specifies the horizontal side of an element.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::SideOrCorner::HorizontalSide]
        required :horizontal_side,
                 enum: -> { HubspotSDK::Cms::SideOrCorner::HorizontalSide },
                 api_name: :horizontalSide

        # @!attribute vertical_side
        #   Specifies the vertical side of an element.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::SideOrCorner::VerticalSide]
        required :vertical_side,
                 enum: -> {
                   HubspotSDK::Cms::SideOrCorner::VerticalSide
                 },
                 api_name: :verticalSide

        # @!method initialize(horizontal_side:, vertical_side:)
        #   @param horizontal_side [Symbol, HubspotSDK::Models::Cms::SideOrCorner::HorizontalSide] Specifies the horizontal side of an element.
        #
        #   @param vertical_side [Symbol, HubspotSDK::Models::Cms::SideOrCorner::VerticalSide] Specifies the vertical side of an element.

        # Specifies the horizontal side of an element.
        #
        # @see HubspotSDK::Models::Cms::SideOrCorner#horizontal_side
        module HorizontalSide
          extend HubspotSDK::Internal::Type::Enum

          CENTER = :CENTER
          LEFT = :LEFT
          RIGHT = :RIGHT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the vertical side of an element.
        #
        # @see HubspotSDK::Models::Cms::SideOrCorner#vertical_side
        module VerticalSide
          extend HubspotSDK::Internal::Type::Enum

          BOTTOM = :BOTTOM
          MIDDLE = :MIDDLE
          TOP = :TOP

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
