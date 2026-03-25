# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BreakpointStyles < HubspotSDK::Internal::Type::BaseModel
          # @!attribute hidden
          #   Boolean indicating if the breakpoint is visible.
          #
          #   @return [Boolean]
          required :hidden, HubspotSDK::Internal::Type::Boolean

          # @!attribute margin
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Margin]
          required :margin, -> { HubspotSDK::Cms::Blogs::Margin }

          # @!attribute padding
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Padding]
          required :padding, -> { HubspotSDK::Cms::Blogs::Padding }

          # @!method initialize(hidden:, margin:, padding:)
          #   @param hidden [Boolean] Boolean indicating if the breakpoint is visible.
          #
          #   @param margin [HubspotSDK::Models::Cms::Blogs::Margin]
          #
          #   @param padding [HubspotSDK::Models::Cms::Blogs::Padding]
        end
      end
    end
  end
end
