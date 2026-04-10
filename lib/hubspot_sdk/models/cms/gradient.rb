# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Gradient < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute angle
        #
        #   @return [HubSpotSDK::Models::Cms::Angle]
        required :angle, -> { HubSpotSDK::Cms::Angle }

        # @!attribute colors
        #
        #   @return [Array<HubSpotSDK::Models::Cms::ColorStop>]
        required :colors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ColorStop] }

        # @!attribute side_or_corner
        #
        #   @return [HubSpotSDK::Models::Cms::SideOrCorner]
        required :side_or_corner, -> { HubSpotSDK::Cms::SideOrCorner }, api_name: :sideOrCorner

        # @!method initialize(angle:, colors:, side_or_corner:)
        #   @param angle [HubSpotSDK::Models::Cms::Angle]
        #   @param colors [Array<HubSpotSDK::Models::Cms::ColorStop>]
        #   @param side_or_corner [HubSpotSDK::Models::Cms::SideOrCorner]
      end
    end
  end
end
