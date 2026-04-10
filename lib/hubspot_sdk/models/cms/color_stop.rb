# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ColorStop < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute color
        #
        #   @return [HubSpotSDK::Models::Cms::RgbaColor]
        required :color, -> { HubSpotSDK::Cms::RgbaColor }

        # @!method initialize(color:)
        #   @param color [HubSpotSDK::Models::Cms::RgbaColor]
      end
    end
  end
end
