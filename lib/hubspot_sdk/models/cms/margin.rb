# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class Margin < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute bottom
        #
        #   @return [HubSpotSDK::Models::Cms::Size]
        required :bottom, -> { HubSpotSDK::Cms::Size }

        # @!attribute top
        #
        #   @return [HubSpotSDK::Models::Cms::Size]
        required :top, -> { HubSpotSDK::Cms::Size }

        # @!method initialize(bottom:, top:)
        #   @param bottom [HubSpotSDK::Models::Cms::Size]
        #   @param top [HubSpotSDK::Models::Cms::Size]
      end
    end
  end
end
