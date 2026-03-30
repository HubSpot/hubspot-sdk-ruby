# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Padding < HubspotSDK::Internal::Type::BaseModel
        # @!attribute bottom
        #
        #   @return [HubspotSDK::Models::Cms::Size]
        required :bottom, -> { HubspotSDK::Cms::Size }

        # @!attribute left
        #
        #   @return [HubspotSDK::Models::Cms::Size]
        required :left, -> { HubspotSDK::Cms::Size }

        # @!attribute right
        #
        #   @return [HubspotSDK::Models::Cms::Size]
        required :right, -> { HubspotSDK::Cms::Size }

        # @!attribute top
        #
        #   @return [HubspotSDK::Models::Cms::Size]
        required :top, -> { HubspotSDK::Cms::Size }

        # @!method initialize(bottom:, left:, right:, top:)
        #   @param bottom [HubspotSDK::Models::Cms::Size]
        #   @param left [HubspotSDK::Models::Cms::Size]
        #   @param right [HubspotSDK::Models::Cms::Size]
        #   @param top [HubspotSDK::Models::Cms::Size]
      end
    end
  end
end
