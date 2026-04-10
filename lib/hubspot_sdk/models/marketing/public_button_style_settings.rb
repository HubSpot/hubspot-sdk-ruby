# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicButtonStyleSettings < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute background_color
        #
        #   @return [Object, nil]
        optional :background_color, HubSpotSDK::Internal::Type::Unknown, api_name: :backgroundColor

        # @!attribute corner_radius
        #
        #   @return [Integer, nil]
        optional :corner_radius, Integer, api_name: :cornerRadius

        # @!attribute font_style
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicFontStyle, nil]
        optional :font_style, -> { HubSpotSDK::Marketing::PublicFontStyle }, api_name: :fontStyle

        # @!method initialize(background_color: nil, corner_radius: nil, font_style: nil)
        #   @param background_color [Object]
        #   @param corner_radius [Integer]
        #   @param font_style [HubSpotSDK::Models::Marketing::PublicFontStyle]
      end
    end
  end
end
