# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::MarketingEvents#get_by_external_event_id
      class MarketingEventPublicReadResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the marketing event CRM object.
        #
        #   @return [String]
        required :id, String

        # @!attribute attendees
        #   The number of HubSpot contacts that attended this marketing event.
        #
        #   @return [Integer]
        required :attendees, Integer

        # @!attribute cancellations
        #   The number of HubSpot contacts that registered for this marketing event, but
        #   later cancelled their registration.
        #
        #   @return [Integer]
        required :cancellations, Integer

        # @!attribute created_at
        #   The creation date and time of the marketing event.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute custom_properties
        #   A list of PropertyValues. These can be whatever kind of property names and
        #   values you want. However, they must already exist on the HubSpot account's
        #   definition of the MarketingEvent Object. If they don't they will be filtered out
        #   and not set. In order to do this you'll need to create a new PropertyGroup on
        #   the HubSpot account's MarketingEvent object for your specific app and create the
        #   Custom Property you want to track on that HubSpot account. Do not create any new
        #   default properties on the MarketingEvent object as that will apply to all
        #   HubSpot accounts.
        #
        #   @return [Array<HubSpotSDK::Models::PropertyValue>]
        required :custom_properties,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyValue] },
                 api_name: :customProperties

        # @!attribute event_name
        #   The name of the marketing event.
        #
        #   @return [String]
        required :event_name, String, api_name: :eventName

        # @!attribute event_organizer
        #   The name of the organizer of the marketing event.
        #
        #   @return [String]
        required :event_organizer, String, api_name: :eventOrganizer

        # @!attribute external_event_id
        #   The id of the marketing event in the external event application.
        #
        #   @return [String]
        required :external_event_id, String, api_name: :externalEventId

        # @!attribute no_shows
        #   The number of HubSpot contacts that registered for this marketing event, but did
        #   not attend. This field only had a value when the event is over.
        #
        #   @return [Integer]
        required :no_shows, Integer, api_name: :noShows

        # @!attribute registrants
        #   The number of HubSpot contacts that registered for this marketing event.
        #
        #   @return [Integer]
        required :registrants, Integer

        # @!attribute updated_at
        #   The update date and time of the marketing event.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute end_date_time
        #   The end date and time of the marketing event.
        #
        #   @return [Time, nil]
        optional :end_date_time, Time, api_name: :endDateTime

        # @!attribute event_cancelled
        #   Indicates if the marketing event has been cancelled.
        #
        #   @return [Boolean, nil]
        optional :event_cancelled, HubSpotSDK::Internal::Type::Boolean, api_name: :eventCancelled

        # @!attribute event_completed
        #   Indicates if the marketing event has been completed.
        #
        #   @return [Boolean, nil]
        optional :event_completed, HubSpotSDK::Internal::Type::Boolean, api_name: :eventCompleted

        # @!attribute event_description
        #   The description of the marketing event.
        #
        #   @return [String, nil]
        optional :event_description, String, api_name: :eventDescription

        # @!attribute event_type
        #   The type of the marketing event.
        #
        #   @return [String, nil]
        optional :event_type, String, api_name: :eventType

        # @!attribute event_url
        #   A URL in the external event application where the marketing event can be
        #   managed.
        #
        #   @return [String, nil]
        optional :event_url, String, api_name: :eventUrl

        # @!attribute object_id_
        #   The ID of the marketing event CRM object.
        #
        #   @return [String, nil]
        optional :object_id_, String, api_name: :objectId

        # @!attribute start_date_time
        #   The start date and time of the marketing event.
        #
        #   @return [Time, nil]
        optional :start_date_time, Time, api_name: :startDateTime

        # @!method initialize(id:, attendees:, cancellations:, created_at:, custom_properties:, event_name:, event_organizer:, external_event_id:, no_shows:, registrants:, updated_at:, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_type: nil, event_url: nil, object_id_: nil, start_date_time: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::MarketingEventPublicReadResponse} for more
        #   details.
        #
        #   @param id [String] The ID of the marketing event CRM object.
        #
        #   @param attendees [Integer] The number of HubSpot contacts that attended this marketing event.
        #
        #   @param cancellations [Integer] The number of HubSpot contacts that registered for this marketing event, but lat
        #
        #   @param created_at [Time] The creation date and time of the marketing event.
        #
        #   @param custom_properties [Array<HubSpotSDK::Models::PropertyValue>] A list of PropertyValues. These can be whatever kind of property names and value
        #
        #   @param event_name [String] The name of the marketing event.
        #
        #   @param event_organizer [String] The name of the organizer of the marketing event.
        #
        #   @param external_event_id [String] The id of the marketing event in the external event application.
        #
        #   @param no_shows [Integer] The number of HubSpot contacts that registered for this marketing event, but did
        #
        #   @param registrants [Integer] The number of HubSpot contacts that registered for this marketing event.
        #
        #   @param updated_at [Time] The update date and time of the marketing event.
        #
        #   @param end_date_time [Time] The end date and time of the marketing event.
        #
        #   @param event_cancelled [Boolean] Indicates if the marketing event has been cancelled.
        #
        #   @param event_completed [Boolean] Indicates if the marketing event has been completed.
        #
        #   @param event_description [String] The description of the marketing event.
        #
        #   @param event_type [String] The type of the marketing event.
        #
        #   @param event_url [String] A URL in the external event application where the marketing event can be managed
        #
        #   @param object_id_ [String] The ID of the marketing event CRM object.
        #
        #   @param start_date_time [Time] The start date and time of the marketing event.
      end
    end

    MarketingEventPublicReadResponse = Marketing::MarketingEventPublicReadResponse
  end
end
