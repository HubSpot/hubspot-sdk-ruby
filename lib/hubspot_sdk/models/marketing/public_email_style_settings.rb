# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicEmailStyleSettings < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute background_color
        #
        #   @return [String, nil]
        optional :background_color, String, api_name: :backgroundColor

        # @!attribute background_image
        #
        #   @return [String, nil]
        optional :background_image, String, api_name: :backgroundImage

        # @!attribute background_image_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::PublicEmailStyleSettings::BackgroundImageType, nil]
        optional :background_image_type,
                 enum: -> { HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType },
                 api_name: :backgroundImageType

        # @!attribute body_border_color
        #
        #   @return [String, nil]
        optional :body_border_color, String, api_name: :bodyBorderColor

        # @!attribute body_border_color_choice
        #
        #   @return [String, nil]
        optional :body_border_color_choice, String, api_name: :bodyBorderColorChoice

        # @!attribute body_border_width
        #
        #   @return [Float, nil]
        optional :body_border_width, Float, api_name: :bodyBorderWidth

        # @!attribute body_color
        #
        #   @return [String, nil]
        optional :body_color, String, api_name: :bodyColor

        # @!attribute button_style_settings
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicButtonStyleSettings, nil]
        optional :button_style_settings,
                 -> { HubSpotSDK::Marketing::PublicButtonStyleSettings },
                 api_name: :buttonStyleSettings

        # @!attribute color_picker_favorite1
        #
        #   @return [String, nil]
        optional :color_picker_favorite1, String, api_name: :colorPickerFavorite1

        # @!attribute color_picker_favorite2
        #
        #   @return [String, nil]
        optional :color_picker_favorite2, String, api_name: :colorPickerFavorite2

        # @!attribute color_picker_favorite3
        #
        #   @return [String, nil]
        optional :color_picker_favorite3, String, api_name: :colorPickerFavorite3

        # @!attribute color_picker_favorite4
        #
        #   @return [String, nil]
        optional :color_picker_favorite4, String, api_name: :colorPickerFavorite4

        # @!attribute color_picker_favorite5
        #
        #   @return [String, nil]
        optional :color_picker_favorite5, String, api_name: :colorPickerFavorite5

        # @!attribute color_picker_favorite6
        #
        #   @return [String, nil]
        optional :color_picker_favorite6, String, api_name: :colorPickerFavorite6

        # @!attribute divider_style_settings
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicDividerStyleSettings, nil]
        optional :divider_style_settings,
                 -> { HubSpotSDK::Marketing::PublicDividerStyleSettings },
                 api_name: :dividerStyleSettings

        # @!attribute email_body_padding
        #
        #   @return [String, nil]
        optional :email_body_padding, String, api_name: :emailBodyPadding

        # @!attribute email_body_width
        #
        #   @return [String, nil]
        optional :email_body_width, String, api_name: :emailBodyWidth

        # @!attribute heading_one_font
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicFontStyle, nil]
        optional :heading_one_font, -> { HubSpotSDK::Marketing::PublicFontStyle }, api_name: :headingOneFont

        # @!attribute heading_two_font
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicFontStyle, nil]
        optional :heading_two_font, -> { HubSpotSDK::Marketing::PublicFontStyle }, api_name: :headingTwoFont

        # @!attribute links_font
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicFontStyle, nil]
        optional :links_font, -> { HubSpotSDK::Marketing::PublicFontStyle }, api_name: :linksFont

        # @!attribute primary_accent_color
        #
        #   @return [String, nil]
        optional :primary_accent_color, String, api_name: :primaryAccentColor

        # @!attribute primary_font
        #
        #   @return [String, nil]
        optional :primary_font, String, api_name: :primaryFont

        # @!attribute primary_font_color
        #
        #   @return [String, nil]
        optional :primary_font_color, String, api_name: :primaryFontColor

        # @!attribute primary_font_line_height
        #
        #   @return [String, nil]
        optional :primary_font_line_height, String, api_name: :primaryFontLineHeight

        # @!attribute primary_font_size
        #
        #   @return [Float, nil]
        optional :primary_font_size, Float, api_name: :primaryFontSize

        # @!attribute secondary_accent_color
        #
        #   @return [String, nil]
        optional :secondary_accent_color, String, api_name: :secondaryAccentColor

        # @!attribute secondary_font
        #
        #   @return [String, nil]
        optional :secondary_font, String, api_name: :secondaryFont

        # @!attribute secondary_font_color
        #
        #   @return [String, nil]
        optional :secondary_font_color, String, api_name: :secondaryFontColor

        # @!attribute secondary_font_line_height
        #
        #   @return [String, nil]
        optional :secondary_font_line_height, String, api_name: :secondaryFontLineHeight

        # @!attribute secondary_font_size
        #
        #   @return [Float, nil]
        optional :secondary_font_size, Float, api_name: :secondaryFontSize

        # @!method initialize(background_color: nil, background_image: nil, background_image_type: nil, body_border_color: nil, body_border_color_choice: nil, body_border_width: nil, body_color: nil, button_style_settings: nil, color_picker_favorite1: nil, color_picker_favorite2: nil, color_picker_favorite3: nil, color_picker_favorite4: nil, color_picker_favorite5: nil, color_picker_favorite6: nil, divider_style_settings: nil, email_body_padding: nil, email_body_width: nil, heading_one_font: nil, heading_two_font: nil, links_font: nil, primary_accent_color: nil, primary_font: nil, primary_font_color: nil, primary_font_line_height: nil, primary_font_size: nil, secondary_accent_color: nil, secondary_font: nil, secondary_font_color: nil, secondary_font_line_height: nil, secondary_font_size: nil)
        #   @param background_color [String]
        #   @param background_image [String]
        #   @param background_image_type [Symbol, HubSpotSDK::Models::Marketing::PublicEmailStyleSettings::BackgroundImageType]
        #   @param body_border_color [String]
        #   @param body_border_color_choice [String]
        #   @param body_border_width [Float]
        #   @param body_color [String]
        #   @param button_style_settings [HubSpotSDK::Models::Marketing::PublicButtonStyleSettings]
        #   @param color_picker_favorite1 [String]
        #   @param color_picker_favorite2 [String]
        #   @param color_picker_favorite3 [String]
        #   @param color_picker_favorite4 [String]
        #   @param color_picker_favorite5 [String]
        #   @param color_picker_favorite6 [String]
        #   @param divider_style_settings [HubSpotSDK::Models::Marketing::PublicDividerStyleSettings]
        #   @param email_body_padding [String]
        #   @param email_body_width [String]
        #   @param heading_one_font [HubSpotSDK::Models::Marketing::PublicFontStyle]
        #   @param heading_two_font [HubSpotSDK::Models::Marketing::PublicFontStyle]
        #   @param links_font [HubSpotSDK::Models::Marketing::PublicFontStyle]
        #   @param primary_accent_color [String]
        #   @param primary_font [String]
        #   @param primary_font_color [String]
        #   @param primary_font_line_height [String]
        #   @param primary_font_size [Float]
        #   @param secondary_accent_color [String]
        #   @param secondary_font [String]
        #   @param secondary_font_color [String]
        #   @param secondary_font_line_height [String]
        #   @param secondary_font_size [Float]

        # @see HubSpotSDK::Models::Marketing::PublicEmailStyleSettings#background_image_type
        module BackgroundImageType
          extend HubSpotSDK::Internal::Type::Enum

          REPEAT = :REPEAT
          SINGLE = :SINGLE
          STRETCH = :STRETCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
