# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Styles < HubspotSDK::Internal::Type::BaseModel
          # @!attribute background_color
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::RgbaColor]
          required :background_color, -> { HubspotSDK::Cms::Blogs::RgbaColor }, api_name: :backgroundColor

          # @!attribute background_gradient
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Gradient]
          required :background_gradient,
                   -> {
                     HubspotSDK::Cms::Blogs::Gradient
                   },
                   api_name: :backgroundGradient

          # @!attribute background_image
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::BackgroundImage]
          required :background_image,
                   -> {
                     HubspotSDK::Cms::Blogs::BackgroundImage
                   },
                   api_name: :backgroundImage

          # @!attribute flexbox_positioning
          #   Indicates whether flexbox positioning is enabled for the section.
          #
          #   @return [Symbol, HubspotSDK::Models::Cms::Blogs::Styles::FlexboxPositioning]
          required :flexbox_positioning,
                   enum: -> { HubspotSDK::Cms::Blogs::Styles::FlexboxPositioning },
                   api_name: :flexboxPositioning

          # @!attribute force_full_width_section
          #   Determines if the section should be forced to full width.
          #
          #   @return [Boolean]
          required :force_full_width_section,
                   HubspotSDK::Internal::Type::Boolean,
                   api_name: :forceFullWidthSection

          # @!attribute max_width_section_centering
          #   Defines the maximum width for centering the section.
          #
          #   @return [Integer]
          required :max_width_section_centering, Integer, api_name: :maxWidthSectionCentering

          # @!attribute vertical_alignment
          #   Specifies the vertical alignment of elements within the section.
          #
          #   @return [Symbol, HubspotSDK::Models::Cms::Blogs::Styles::VerticalAlignment]
          required :vertical_alignment,
                   enum: -> { HubspotSDK::Cms::Blogs::Styles::VerticalAlignment },
                   api_name: :verticalAlignment

          # @!attribute breakpoint_styles
          #   Breakpoint CSS styles for margin, padding, etc...
          #
          #   @return [Hash{Symbol=>HubspotSDK::Models::Cms::Blogs::BreakpointStyles}, nil]
          optional :breakpoint_styles,
                   -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::Blogs::BreakpointStyles] },
                   api_name: :breakpointStyles

          # @!method initialize(background_color:, background_gradient:, background_image:, flexbox_positioning:, force_full_width_section:, max_width_section_centering:, vertical_alignment:, breakpoint_styles: nil)
          #   @param background_color [HubspotSDK::Models::Cms::Blogs::RgbaColor]
          #
          #   @param background_gradient [HubspotSDK::Models::Cms::Blogs::Gradient]
          #
          #   @param background_image [HubspotSDK::Models::Cms::Blogs::BackgroundImage]
          #
          #   @param flexbox_positioning [Symbol, HubspotSDK::Models::Cms::Blogs::Styles::FlexboxPositioning] Indicates whether flexbox positioning is enabled for the section.
          #
          #   @param force_full_width_section [Boolean] Determines if the section should be forced to full width.
          #
          #   @param max_width_section_centering [Integer] Defines the maximum width for centering the section.
          #
          #   @param vertical_alignment [Symbol, HubspotSDK::Models::Cms::Blogs::Styles::VerticalAlignment] Specifies the vertical alignment of elements within the section.
          #
          #   @param breakpoint_styles [Hash{Symbol=>HubspotSDK::Models::Cms::Blogs::BreakpointStyles}] Breakpoint CSS styles for margin, padding, etc...

          # Indicates whether flexbox positioning is enabled for the section.
          #
          # @see HubspotSDK::Models::Cms::Blogs::Styles#flexbox_positioning
          module FlexboxPositioning
            extend HubspotSDK::Internal::Type::Enum

            BOTTOM_CENTER = :BOTTOM_CENTER
            BOTTOM_LEFT = :BOTTOM_LEFT
            BOTTOM_RIGHT = :BOTTOM_RIGHT
            MIDDLE_CENTER = :MIDDLE_CENTER
            MIDDLE_LEFT = :MIDDLE_LEFT
            MIDDLE_RIGHT = :MIDDLE_RIGHT
            TOP_CENTER = :TOP_CENTER
            TOP_LEFT = :TOP_LEFT
            TOP_RIGHT = :TOP_RIGHT

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Specifies the vertical alignment of elements within the section.
          #
          # @see HubspotSDK::Models::Cms::Blogs::Styles#vertical_alignment
          module VerticalAlignment
            extend HubspotSDK::Internal::Type::Enum

            BOTTOM = :BOTTOM
            MIDDLE = :MIDDLE
            TOP = :TOP

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
