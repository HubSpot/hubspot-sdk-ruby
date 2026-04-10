# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#get_event_visibility_settings
      class EventVisibilityResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute visibility_settings
        #
        #   @return [Array<HubSpotSDK::Models::Cms::EventVisibilityChange>]
        required :visibility_settings,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::EventVisibilityChange] },
                 api_name: :visibilitySettings

        # @!method initialize(created_at:, visibility_settings:)
        #   @param created_at [Time]
        #   @param visibility_settings [Array<HubSpotSDK::Models::Cms::EventVisibilityChange>]
      end
    end
  end
end
