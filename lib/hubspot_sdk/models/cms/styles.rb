# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Styles < HubspotSDK::Internal::Type::BaseModel
        # @!attribute background_color
        #   A color defined by RGB values.
        #
        #   @return [HubspotSDK::Models::Cms::RgbaColor]
        required :background_color, -> { HubspotSDK::Cms::RgbaColor }, api_name: :backgroundColor

        # @!attribute background_gradient
        #
        #   @return [HubspotSDK::Models::Cms::Gradient]
        required :background_gradient, -> { HubspotSDK::Cms::Gradient }, api_name: :backgroundGradient

        # @!attribute background_image
        #
        #   @return [HubspotSDK::Models::Cms::BackgroundImage]
        required :background_image, -> { HubspotSDK::Cms::BackgroundImage }, api_name: :backgroundImage

        # @!attribute flexbox_positioning
        #
        #   @return [String]
        required :flexbox_positioning, String, api_name: :flexboxPositioning

        # @!attribute force_full_width_section
        #
        #   @return [Boolean]
        required :force_full_width_section,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :forceFullWidthSection

        # @!attribute max_width_section_centering
        #
        #   @return [Integer]
        required :max_width_section_centering, Integer, api_name: :maxWidthSectionCentering

        # @!attribute vertical_alignment
        #
        #   @return [String]
        required :vertical_alignment, String, api_name: :verticalAlignment

        # @!attribute breakpoint_styles
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Cms::BreakpointStyles}, nil]
        optional :breakpoint_styles,
                 -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::BreakpointStyles] },
                 api_name: :breakpointStyles

        # @!method initialize(background_color:, background_gradient:, background_image:, flexbox_positioning:, force_full_width_section:, max_width_section_centering:, vertical_alignment:, breakpoint_styles: nil)
        #   @param background_color [HubspotSDK::Models::Cms::RgbaColor] A color defined by RGB values.
        #
        #   @param background_gradient [HubspotSDK::Models::Cms::Gradient]
        #
        #   @param background_image [HubspotSDK::Models::Cms::BackgroundImage]
        #
        #   @param flexbox_positioning [String]
        #
        #   @param force_full_width_section [Boolean]
        #
        #   @param max_width_section_centering [Integer]
        #
        #   @param vertical_alignment [String]
        #
        #   @param breakpoint_styles [Hash{Symbol=>HubspotSDK::Models::Cms::BreakpointStyles}]
      end
    end
  end
end
