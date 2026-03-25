# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Styles < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::Styles,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubspotSDK::Cms::Blogs::RgbaColor) }
          attr_reader :background_color

          sig do
            params(
              background_color: HubspotSDK::Cms::Blogs::RgbaColor::OrHash
            ).void
          end
          attr_writer :background_color

          sig { returns(HubspotSDK::Cms::Blogs::Gradient) }
          attr_reader :background_gradient

          sig do
            params(
              background_gradient: HubspotSDK::Cms::Blogs::Gradient::OrHash
            ).void
          end
          attr_writer :background_gradient

          sig { returns(HubspotSDK::Cms::Blogs::BackgroundImage) }
          attr_reader :background_image

          sig do
            params(
              background_image: HubspotSDK::Cms::Blogs::BackgroundImage::OrHash
            ).void
          end
          attr_writer :background_image

          # Indicates whether flexbox positioning is enabled for the section.
          sig do
            returns(
              HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::OrSymbol
            )
          end
          attr_accessor :flexbox_positioning

          # Determines if the section should be forced to full width.
          sig { returns(T::Boolean) }
          attr_accessor :force_full_width_section

          # Defines the maximum width for centering the section.
          sig { returns(Integer) }
          attr_accessor :max_width_section_centering

          # Specifies the vertical alignment of elements within the section.
          sig do
            returns(HubspotSDK::Cms::Blogs::Styles::VerticalAlignment::OrSymbol)
          end
          attr_accessor :vertical_alignment

          # Breakpoint CSS styles for margin, padding, etc...
          sig do
            returns(
              T.nilable(
                T::Hash[Symbol, HubspotSDK::Cms::Blogs::BreakpointStyles]
              )
            )
          end
          attr_reader :breakpoint_styles

          sig do
            params(
              breakpoint_styles:
                T::Hash[
                  Symbol,
                  HubspotSDK::Cms::Blogs::BreakpointStyles::OrHash
                ]
            ).void
          end
          attr_writer :breakpoint_styles

          sig do
            params(
              background_color: HubspotSDK::Cms::Blogs::RgbaColor::OrHash,
              background_gradient: HubspotSDK::Cms::Blogs::Gradient::OrHash,
              background_image: HubspotSDK::Cms::Blogs::BackgroundImage::OrHash,
              flexbox_positioning:
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::OrSymbol,
              force_full_width_section: T::Boolean,
              max_width_section_centering: Integer,
              vertical_alignment:
                HubspotSDK::Cms::Blogs::Styles::VerticalAlignment::OrSymbol,
              breakpoint_styles:
                T::Hash[
                  Symbol,
                  HubspotSDK::Cms::Blogs::BreakpointStyles::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            background_color:,
            background_gradient:,
            background_image:,
            # Indicates whether flexbox positioning is enabled for the section.
            flexbox_positioning:,
            # Determines if the section should be forced to full width.
            force_full_width_section:,
            # Defines the maximum width for centering the section.
            max_width_section_centering:,
            # Specifies the vertical alignment of elements within the section.
            vertical_alignment:,
            # Breakpoint CSS styles for margin, padding, etc...
            breakpoint_styles: nil
          )
          end

          sig do
            override.returns(
              {
                background_color: HubspotSDK::Cms::Blogs::RgbaColor,
                background_gradient: HubspotSDK::Cms::Blogs::Gradient,
                background_image: HubspotSDK::Cms::Blogs::BackgroundImage,
                flexbox_positioning:
                  HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::OrSymbol,
                force_full_width_section: T::Boolean,
                max_width_section_centering: Integer,
                vertical_alignment:
                  HubspotSDK::Cms::Blogs::Styles::VerticalAlignment::OrSymbol,
                breakpoint_styles:
                  T::Hash[Symbol, HubspotSDK::Cms::Blogs::BreakpointStyles]
              }
            )
          end
          def to_hash
          end

          # Indicates whether flexbox positioning is enabled for the section.
          module FlexboxPositioning
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOTTOM_CENTER =
              T.let(
                :BOTTOM_CENTER,
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
              )
            BOTTOM_LEFT =
              T.let(
                :BOTTOM_LEFT,
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
              )
            BOTTOM_RIGHT =
              T.let(
                :BOTTOM_RIGHT,
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
              )
            MIDDLE_CENTER =
              T.let(
                :MIDDLE_CENTER,
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
              )
            MIDDLE_LEFT =
              T.let(
                :MIDDLE_LEFT,
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
              )
            MIDDLE_RIGHT =
              T.let(
                :MIDDLE_RIGHT,
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
              )
            TOP_CENTER =
              T.let(
                :TOP_CENTER,
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
              )
            TOP_LEFT =
              T.let(
                :TOP_LEFT,
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
              )
            TOP_RIGHT =
              T.let(
                :TOP_RIGHT,
                HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Specifies the vertical alignment of elements within the section.
          module VerticalAlignment
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, HubspotSDK::Cms::Blogs::Styles::VerticalAlignment)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOTTOM =
              T.let(
                :BOTTOM,
                HubspotSDK::Cms::Blogs::Styles::VerticalAlignment::TaggedSymbol
              )
            MIDDLE =
              T.let(
                :MIDDLE,
                HubspotSDK::Cms::Blogs::Styles::VerticalAlignment::TaggedSymbol
              )
            TOP =
              T.let(
                :TOP,
                HubspotSDK::Cms::Blogs::Styles::VerticalAlignment::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::Blogs::Styles::VerticalAlignment::TaggedSymbol
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
end
