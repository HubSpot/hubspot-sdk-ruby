# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class EventVisibilityResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute visibility_settings
        #
        #   @return [Array<HubspotSDK::Models::Cms::EventVisibilityChange>]
        required :visibility_settings,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::EventVisibilityChange] },
                 api_name: :visibilitySettings

        # @!method initialize(created_at:, visibility_settings:)
        #   @param created_at [Time]
        #   @param visibility_settings [Array<HubspotSDK::Models::Cms::EventVisibilityChange>]
      end
    end
  end
end
