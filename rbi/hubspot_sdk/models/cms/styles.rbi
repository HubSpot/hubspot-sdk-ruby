# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Styles < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Styles, HubspotSDK::Internal::AnyHash)
          end

        # A color defined by RGB values.
        sig { returns(HubspotSDK::Cms::RgbaColor) }
        attr_reader :background_color

        sig do
          params(background_color: HubspotSDK::Cms::RgbaColor::OrHash).void
        end
        attr_writer :background_color

        sig { returns(HubspotSDK::Cms::Gradient) }
        attr_reader :background_gradient

        sig do
          params(background_gradient: HubspotSDK::Cms::Gradient::OrHash).void
        end
        attr_writer :background_gradient

        sig { returns(HubspotSDK::Cms::BackgroundImage) }
        attr_reader :background_image

        sig do
          params(
            background_image: HubspotSDK::Cms::BackgroundImage::OrHash
          ).void
        end
        attr_writer :background_image

        sig { returns(String) }
        attr_accessor :flexbox_positioning

        sig { returns(T::Boolean) }
        attr_accessor :force_full_width_section

        sig { returns(Integer) }
        attr_accessor :max_width_section_centering

        sig { returns(String) }
        attr_accessor :vertical_alignment

        sig do
          returns(
            T.nilable(T::Hash[Symbol, HubspotSDK::Cms::Blogs::BreakpointStyles])
          )
        end
        attr_reader :breakpoint_styles

        sig do
          params(
            breakpoint_styles:
              T::Hash[Symbol, HubspotSDK::Cms::Blogs::BreakpointStyles::OrHash]
          ).void
        end
        attr_writer :breakpoint_styles

        sig do
          params(
            background_color: HubspotSDK::Cms::RgbaColor::OrHash,
            background_gradient: HubspotSDK::Cms::Gradient::OrHash,
            background_image: HubspotSDK::Cms::BackgroundImage::OrHash,
            flexbox_positioning: String,
            force_full_width_section: T::Boolean,
            max_width_section_centering: Integer,
            vertical_alignment: String,
            breakpoint_styles:
              T::Hash[Symbol, HubspotSDK::Cms::Blogs::BreakpointStyles::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # A color defined by RGB values.
          background_color:,
          background_gradient:,
          background_image:,
          flexbox_positioning:,
          force_full_width_section:,
          max_width_section_centering:,
          vertical_alignment:,
          breakpoint_styles: nil
        )
        end

        sig do
          override.returns(
            {
              background_color: HubspotSDK::Cms::RgbaColor,
              background_gradient: HubspotSDK::Cms::Gradient,
              background_image: HubspotSDK::Cms::BackgroundImage,
              flexbox_positioning: String,
              force_full_width_section: T::Boolean,
              max_width_section_centering: Integer,
              vertical_alignment: String,
              breakpoint_styles:
                T::Hash[Symbol, HubspotSDK::Cms::Blogs::BreakpointStyles]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
