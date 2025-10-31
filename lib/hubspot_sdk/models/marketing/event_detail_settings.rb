# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EventDetailSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #   The id of the application the settings are for
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute event_details_url
        #   The url that will be used to fetch marketing event details by id
        #
        #   @return [String]
        required :event_details_url, String, api_name: :eventDetailsUrl

        # @!method initialize(app_id:, event_details_url:)
        #   @param app_id [Integer] The id of the application the settings are for
        #
        #   @param event_details_url [String] The url that will be used to fetch marketing event details by id
      end
    end
  end
end
