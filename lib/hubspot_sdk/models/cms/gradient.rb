# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Gradient < HubspotSDK::Internal::Type::BaseModel
        # @!attribute angle
        #
        #   @return [HubspotSDK::Models::Cms::Angle]
        required :angle, -> { HubspotSDK::Cms::Angle }

        # @!attribute colors
        #
        #   @return [Array<HubspotSDK::Models::Cms::ColorStop>]
        required :colors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ColorStop] }

        # @!attribute side_or_corner
        #
        #   @return [HubspotSDK::Models::Cms::SideOrCorner]
        required :side_or_corner, -> { HubspotSDK::Cms::SideOrCorner }, api_name: :sideOrCorner

        # @!method initialize(angle:, colors:, side_or_corner:)
        #   @param angle [HubspotSDK::Models::Cms::Angle]
        #   @param colors [Array<HubspotSDK::Models::Cms::ColorStop>]
        #   @param side_or_corner [HubspotSDK::Models::Cms::SideOrCorner]
      end
    end
  end
end
