# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ColorStop < HubspotSDK::Internal::Type::BaseModel
        # @!attribute color
        #   A color defined by RGB values.
        #
        #   @return [HubspotSDK::Models::Cms::RgbaColor]
        required :color, -> { HubspotSDK::Cms::RgbaColor }

        # @!method initialize(color:)
        #   @param color [HubspotSDK::Models::Cms::RgbaColor] A color defined by RGB values.
      end
    end
  end
end
