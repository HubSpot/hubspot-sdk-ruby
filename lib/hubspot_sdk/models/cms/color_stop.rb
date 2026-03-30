# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ColorStop < HubspotSDK::Internal::Type::BaseModel
        # @!attribute color
        #
        #   @return [HubspotSDK::Models::Cms::RgbaColor]
        required :color, -> { HubspotSDK::Cms::RgbaColor }

        # @!method initialize(color:)
        #   @param color [HubspotSDK::Models::Cms::RgbaColor]
      end
    end
  end
end
