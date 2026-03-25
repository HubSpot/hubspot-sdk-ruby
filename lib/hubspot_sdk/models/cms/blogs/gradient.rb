# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Gradient < HubspotSDK::Internal::Type::BaseModel
          # @!attribute angle
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Angle]
          required :angle, -> { HubspotSDK::Cms::Blogs::Angle }

          # @!attribute colors
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::ColorStop>]
          required :colors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::ColorStop] }

          # @!attribute side_or_corner
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::SideOrCorner]
          required :side_or_corner, -> { HubspotSDK::Cms::Blogs::SideOrCorner }, api_name: :sideOrCorner

          # @!method initialize(angle:, colors:, side_or_corner:)
          #   @param angle [HubspotSDK::Models::Cms::Blogs::Angle]
          #   @param colors [Array<HubspotSDK::Models::Cms::Blogs::ColorStop>]
          #   @param side_or_corner [HubspotSDK::Models::Cms::Blogs::SideOrCorner]
        end
      end
    end
  end
end
