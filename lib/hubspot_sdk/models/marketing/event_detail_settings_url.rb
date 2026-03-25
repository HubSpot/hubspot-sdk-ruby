# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EventDetailSettingsURL < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event_details_url
        #   The url that will be used to fetch marketing event details by id. Must contain a
        #   `%s` character sequence that will be substituted with the event id. For example:
        #   `https://my.event.app/events/%s`
        #
        #   @return [String]
        required :event_details_url, String, api_name: :eventDetailsUrl

        # @!method initialize(event_details_url:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::EventDetailSettingsURL} for more details.
        #
        #   @param event_details_url [String] The url that will be used to fetch marketing event details by id. Must contain a
      end
    end
  end
end
