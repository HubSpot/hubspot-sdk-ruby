# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BreakpointStyles < HubspotSDK::Internal::Type::BaseModel
          # @!attribute hidden
          #
          #   @return [Boolean]
          required :hidden, HubspotSDK::Internal::Type::Boolean

          # @!attribute margin
          #
          #   @return [Object]
          required :margin, HubspotSDK::Internal::Type::Unknown

          # @!attribute padding
          #
          #   @return [Object]
          required :padding, HubspotSDK::Internal::Type::Unknown

          # @!method initialize(hidden:, margin:, padding:)
          #   @param hidden [Boolean]
          #   @param margin [Object]
          #   @param padding [Object]
        end
      end
    end
  end
end
