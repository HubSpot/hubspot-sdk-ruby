# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BreakpointStyles < HubspotSDK::Internal::Type::BaseModel
        # @!attribute hidden
        #   Boolean indicating if the breakpoint is visible.
        #
        #   @return [Boolean]
        required :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute margin
        #
        #   @return [HubspotSDK::Models::Cms::Margin]
        required :margin, -> { HubspotSDK::Cms::Margin }

        # @!attribute padding
        #
        #   @return [HubspotSDK::Models::Cms::Padding]
        required :padding, -> { HubspotSDK::Cms::Padding }

        # @!method initialize(hidden:, margin:, padding:)
        #   @param hidden [Boolean] Boolean indicating if the breakpoint is visible.
        #
        #   @param margin [HubspotSDK::Models::Cms::Margin]
        #
        #   @param padding [HubspotSDK::Models::Cms::Padding]
      end
    end
  end
end
