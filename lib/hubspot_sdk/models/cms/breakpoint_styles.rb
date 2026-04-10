# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BreakpointStyles < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute hidden
        #   Boolean indicating if the breakpoint is visible.
        #
        #   @return [Boolean]
        required :hidden, HubSpotSDK::Internal::Type::Boolean

        # @!attribute margin
        #
        #   @return [HubSpotSDK::Models::Cms::Margin]
        required :margin, -> { HubSpotSDK::Cms::Margin }

        # @!attribute padding
        #
        #   @return [HubSpotSDK::Models::Cms::Padding]
        required :padding, -> { HubSpotSDK::Cms::Padding }

        # @!method initialize(hidden:, margin:, padding:)
        #   @param hidden [Boolean] Boolean indicating if the breakpoint is visible.
        #
        #   @param margin [HubSpotSDK::Models::Cms::Margin]
        #
        #   @param padding [HubSpotSDK::Models::Cms::Padding]
      end
    end
  end
end
