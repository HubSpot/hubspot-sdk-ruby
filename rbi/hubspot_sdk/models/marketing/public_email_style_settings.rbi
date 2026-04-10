# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicEmailStyleSettings < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicEmailStyleSettings,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :background_color

        sig { params(background_color: String).void }
        attr_writer :background_color

        sig { returns(T.nilable(String)) }
        attr_reader :background_image

        sig { params(background_image: String).void }
        attr_writer :background_image

        sig do
          returns(
            T.nilable(
              HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType::OrSymbol
            )
          )
        end
        attr_reader :background_image_type

        sig do
          params(
            background_image_type:
              HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType::OrSymbol
          ).void
        end
        attr_writer :background_image_type

        sig { returns(T.nilable(String)) }
        attr_reader :body_border_color

        sig { params(body_border_color: String).void }
        attr_writer :body_border_color

        sig { returns(T.nilable(String)) }
        attr_reader :body_border_color_choice

        sig { params(body_border_color_choice: String).void }
        attr_writer :body_border_color_choice

        sig { returns(T.nilable(Float)) }
        attr_reader :body_border_width

        sig { params(body_border_width: Float).void }
        attr_writer :body_border_width

        sig { returns(T.nilable(String)) }
        attr_reader :body_color

        sig { params(body_color: String).void }
        attr_writer :body_color

        sig do
          returns(T.nilable(HubSpotSDK::Marketing::PublicButtonStyleSettings))
        end
        attr_reader :button_style_settings

        sig do
          params(
            button_style_settings:
              HubSpotSDK::Marketing::PublicButtonStyleSettings::OrHash
          ).void
        end
        attr_writer :button_style_settings

        sig { returns(T.nilable(String)) }
        attr_reader :color_picker_favorite1

        sig { params(color_picker_favorite1: String).void }
        attr_writer :color_picker_favorite1

        sig { returns(T.nilable(String)) }
        attr_reader :color_picker_favorite2

        sig { params(color_picker_favorite2: String).void }
        attr_writer :color_picker_favorite2

        sig { returns(T.nilable(String)) }
        attr_reader :color_picker_favorite3

        sig { params(color_picker_favorite3: String).void }
        attr_writer :color_picker_favorite3

        sig { returns(T.nilable(String)) }
        attr_reader :color_picker_favorite4

        sig { params(color_picker_favorite4: String).void }
        attr_writer :color_picker_favorite4

        sig { returns(T.nilable(String)) }
        attr_reader :color_picker_favorite5

        sig { params(color_picker_favorite5: String).void }
        attr_writer :color_picker_favorite5

        sig { returns(T.nilable(String)) }
        attr_reader :color_picker_favorite6

        sig { params(color_picker_favorite6: String).void }
        attr_writer :color_picker_favorite6

        sig do
          returns(T.nilable(HubSpotSDK::Marketing::PublicDividerStyleSettings))
        end
        attr_reader :divider_style_settings

        sig do
          params(
            divider_style_settings:
              HubSpotSDK::Marketing::PublicDividerStyleSettings::OrHash
          ).void
        end
        attr_writer :divider_style_settings

        sig { returns(T.nilable(String)) }
        attr_reader :email_body_padding

        sig { params(email_body_padding: String).void }
        attr_writer :email_body_padding

        sig { returns(T.nilable(String)) }
        attr_reader :email_body_width

        sig { params(email_body_width: String).void }
        attr_writer :email_body_width

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicFontStyle)) }
        attr_reader :heading_one_font

        sig do
          params(
            heading_one_font: HubSpotSDK::Marketing::PublicFontStyle::OrHash
          ).void
        end
        attr_writer :heading_one_font

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicFontStyle)) }
        attr_reader :heading_two_font

        sig do
          params(
            heading_two_font: HubSpotSDK::Marketing::PublicFontStyle::OrHash
          ).void
        end
        attr_writer :heading_two_font

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicFontStyle)) }
        attr_reader :links_font

        sig do
          params(
            links_font: HubSpotSDK::Marketing::PublicFontStyle::OrHash
          ).void
        end
        attr_writer :links_font

        sig { returns(T.nilable(String)) }
        attr_reader :primary_accent_color

        sig { params(primary_accent_color: String).void }
        attr_writer :primary_accent_color

        sig { returns(T.nilable(String)) }
        attr_reader :primary_font

        sig { params(primary_font: String).void }
        attr_writer :primary_font

        sig { returns(T.nilable(String)) }
        attr_reader :primary_font_color

        sig { params(primary_font_color: String).void }
        attr_writer :primary_font_color

        sig { returns(T.nilable(String)) }
        attr_reader :primary_font_line_height

        sig { params(primary_font_line_height: String).void }
        attr_writer :primary_font_line_height

        sig { returns(T.nilable(Float)) }
        attr_reader :primary_font_size

        sig { params(primary_font_size: Float).void }
        attr_writer :primary_font_size

        sig { returns(T.nilable(String)) }
        attr_reader :secondary_accent_color

        sig { params(secondary_accent_color: String).void }
        attr_writer :secondary_accent_color

        sig { returns(T.nilable(String)) }
        attr_reader :secondary_font

        sig { params(secondary_font: String).void }
        attr_writer :secondary_font

        sig { returns(T.nilable(String)) }
        attr_reader :secondary_font_color

        sig { params(secondary_font_color: String).void }
        attr_writer :secondary_font_color

        sig { returns(T.nilable(String)) }
        attr_reader :secondary_font_line_height

        sig { params(secondary_font_line_height: String).void }
        attr_writer :secondary_font_line_height

        sig { returns(T.nilable(Float)) }
        attr_reader :secondary_font_size

        sig { params(secondary_font_size: Float).void }
        attr_writer :secondary_font_size

        sig do
          params(
            background_color: String,
            background_image: String,
            background_image_type:
              HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType::OrSymbol,
            body_border_color: String,
            body_border_color_choice: String,
            body_border_width: Float,
            body_color: String,
            button_style_settings:
              HubSpotSDK::Marketing::PublicButtonStyleSettings::OrHash,
            color_picker_favorite1: String,
            color_picker_favorite2: String,
            color_picker_favorite3: String,
            color_picker_favorite4: String,
            color_picker_favorite5: String,
            color_picker_favorite6: String,
            divider_style_settings:
              HubSpotSDK::Marketing::PublicDividerStyleSettings::OrHash,
            email_body_padding: String,
            email_body_width: String,
            heading_one_font: HubSpotSDK::Marketing::PublicFontStyle::OrHash,
            heading_two_font: HubSpotSDK::Marketing::PublicFontStyle::OrHash,
            links_font: HubSpotSDK::Marketing::PublicFontStyle::OrHash,
            primary_accent_color: String,
            primary_font: String,
            primary_font_color: String,
            primary_font_line_height: String,
            primary_font_size: Float,
            secondary_accent_color: String,
            secondary_font: String,
            secondary_font_color: String,
            secondary_font_line_height: String,
            secondary_font_size: Float
          ).returns(T.attached_class)
        end
        def self.new(
          background_color: nil,
          background_image: nil,
          background_image_type: nil,
          body_border_color: nil,
          body_border_color_choice: nil,
          body_border_width: nil,
          body_color: nil,
          button_style_settings: nil,
          color_picker_favorite1: nil,
          color_picker_favorite2: nil,
          color_picker_favorite3: nil,
          color_picker_favorite4: nil,
          color_picker_favorite5: nil,
          color_picker_favorite6: nil,
          divider_style_settings: nil,
          email_body_padding: nil,
          email_body_width: nil,
          heading_one_font: nil,
          heading_two_font: nil,
          links_font: nil,
          primary_accent_color: nil,
          primary_font: nil,
          primary_font_color: nil,
          primary_font_line_height: nil,
          primary_font_size: nil,
          secondary_accent_color: nil,
          secondary_font: nil,
          secondary_font_color: nil,
          secondary_font_line_height: nil,
          secondary_font_size: nil
        )
        end

        sig do
          override.returns(
            {
              background_color: String,
              background_image: String,
              background_image_type:
                HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType::OrSymbol,
              body_border_color: String,
              body_border_color_choice: String,
              body_border_width: Float,
              body_color: String,
              button_style_settings:
                HubSpotSDK::Marketing::PublicButtonStyleSettings,
              color_picker_favorite1: String,
              color_picker_favorite2: String,
              color_picker_favorite3: String,
              color_picker_favorite4: String,
              color_picker_favorite5: String,
              color_picker_favorite6: String,
              divider_style_settings:
                HubSpotSDK::Marketing::PublicDividerStyleSettings,
              email_body_padding: String,
              email_body_width: String,
              heading_one_font: HubSpotSDK::Marketing::PublicFontStyle,
              heading_two_font: HubSpotSDK::Marketing::PublicFontStyle,
              links_font: HubSpotSDK::Marketing::PublicFontStyle,
              primary_accent_color: String,
              primary_font: String,
              primary_font_color: String,
              primary_font_line_height: String,
              primary_font_size: Float,
              secondary_accent_color: String,
              secondary_font: String,
              secondary_font_color: String,
              secondary_font_line_height: String,
              secondary_font_size: Float
            }
          )
        end
        def to_hash
        end

        module BackgroundImageType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REPEAT =
            T.let(
              :REPEAT,
              HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType::TaggedSymbol
            )
          SINGLE =
            T.let(
              :SINGLE,
              HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType::TaggedSymbol
            )
          STRETCH =
            T.let(
              :STRETCH,
              HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::PublicEmailStyleSettings::BackgroundImageType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
