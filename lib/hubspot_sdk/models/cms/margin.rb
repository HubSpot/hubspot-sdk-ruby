# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Margin < HubspotSDK::Internal::Type::BaseModel
        # @!attribute bottom
        #
        #   @return [HubspotSDK::Models::Cms::Size]
        required :bottom, -> { HubspotSDK::Cms::Size }

        # @!attribute top
        #
        #   @return [HubspotSDK::Models::Cms::Size]
        required :top, -> { HubspotSDK::Cms::Size }

        # @!method initialize(bottom:, top:)
        #   @param bottom [HubspotSDK::Models::Cms::Size]
        #   @param top [HubspotSDK::Models::Cms::Size]
      end
    end
  end
end
