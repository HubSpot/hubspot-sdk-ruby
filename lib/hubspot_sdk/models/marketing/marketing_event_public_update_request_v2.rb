# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventPublicUpdateRequestV2 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute custom_properties
        #
        #   @return [Array<HubspotSDK::Models::PropertyValue>]
        required :custom_properties,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PropertyValue] },
                 api_name: :customProperties

        # @!attribute end_date_time
        #   The end date and time of the marketing event
        #
        #   @return [Time, nil]
        optional :end_date_time, Time, api_name: :endDateTime

        # @!attribute event_cancelled
        #   Indicates if the marketing event has been cancelled
        #
        #   @return [Boolean, nil]
        optional :event_cancelled, HubspotSDK::Internal::Type::Boolean, api_name: :eventCancelled

        # @!attribute event_description
        #   The description of the marketing event
        #
        #   @return [String, nil]
        optional :event_description, String, api_name: :eventDescription

        # @!attribute event_name
        #   The name of the marketing event
        #
        #   @return [String, nil]
        optional :event_name, String, api_name: :eventName

        # @!attribute event_organizer
        #   The name of the organizer of the marketing event
        #
        #   @return [String, nil]
        optional :event_organizer, String, api_name: :eventOrganizer

        # @!attribute event_type
        #   The type of the marketing event
        #
        #   @return [String, nil]
        optional :event_type, String, api_name: :eventType

        # @!attribute event_url
        #   A URL in the external event application where the marketing event can be managed
        #
        #   @return [String, nil]
        optional :event_url, String, api_name: :eventUrl

        # @!attribute start_date_time
        #   The start date and time of the marketing event
        #
        #   @return [Time, nil]
        optional :start_date_time, Time, api_name: :startDateTime

        # @!method initialize(custom_properties:, end_date_time: nil, event_cancelled: nil, event_description: nil, event_name: nil, event_organizer: nil, event_type: nil, event_url: nil, start_date_time: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::MarketingEventPublicUpdateRequestV2} for more
        #   details.
        #
        #   @param custom_properties [Array<HubspotSDK::Models::PropertyValue>]
        #
        #   @param end_date_time [Time] The end date and time of the marketing event
        #
        #   @param event_cancelled [Boolean] Indicates if the marketing event has been cancelled
        #
        #   @param event_description [String] The description of the marketing event
        #
        #   @param event_name [String] The name of the marketing event
        #
        #   @param event_organizer [String] The name of the organizer of the marketing event
        #
        #   @param event_type [String] The type of the marketing event
        #
        #   @param event_url [String] A URL in the external event application where the marketing event can be managed
        #
        #   @param start_date_time [Time] The start date and time of the marketing event
      end
    end

    MarketingEventPublicUpdateRequestV2 = Marketing::MarketingEventPublicUpdateRequestV2
  end
end
