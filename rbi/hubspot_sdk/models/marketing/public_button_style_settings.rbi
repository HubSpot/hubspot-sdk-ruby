# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicButtonStyleSettings < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicButtonStyleSettings,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T.anything)) }
        attr_reader :background_color

        sig { params(background_color: T.anything).void }
        attr_writer :background_color

        sig { returns(T.nilable(Integer)) }
        attr_reader :corner_radius

        sig { params(corner_radius: Integer).void }
        attr_writer :corner_radius

        sig { returns(T.nilable(HubSpotSDK::Marketing::PublicFontStyle)) }
        attr_reader :font_style

        sig do
          params(
            font_style: HubSpotSDK::Marketing::PublicFontStyle::OrHash
          ).void
        end
        attr_writer :font_style

        sig do
          params(
            background_color: T.anything,
            corner_radius: Integer,
            font_style: HubSpotSDK::Marketing::PublicFontStyle::OrHash
          ).returns(T.attached_class)
        end
        def self.new(background_color: nil, corner_radius: nil, font_style: nil)
        end

        sig do
          override.returns(
            {
              background_color: T.anything,
              corner_radius: Integer,
              font_style: HubSpotSDK::Marketing::PublicFontStyle
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
