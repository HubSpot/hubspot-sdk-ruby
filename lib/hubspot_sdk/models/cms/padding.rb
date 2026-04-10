# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Padding < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute bottom
        #
        #   @return [HubSpotSDK::Models::Cms::Size]
        required :bottom, -> { HubSpotSDK::Cms::Size }

        # @!attribute left
        #
        #   @return [HubSpotSDK::Models::Cms::Size]
        required :left, -> { HubSpotSDK::Cms::Size }

        # @!attribute right
        #
        #   @return [HubSpotSDK::Models::Cms::Size]
        required :right, -> { HubSpotSDK::Cms::Size }

        # @!attribute top
        #
        #   @return [HubSpotSDK::Models::Cms::Size]
        required :top, -> { HubSpotSDK::Cms::Size }

        # @!method initialize(bottom:, left:, right:, top:)
        #   @param bottom [HubSpotSDK::Models::Cms::Size]
        #   @param left [HubSpotSDK::Models::Cms::Size]
        #   @param right [HubSpotSDK::Models::Cms::Size]
        #   @param top [HubSpotSDK::Models::Cms::Size]
      end
    end
  end
end
