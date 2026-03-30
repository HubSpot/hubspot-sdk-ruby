# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#list
      class MarketingEventPublicReadResponseV2 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_at
        #   The creation date and time of the marketing event
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute custom_properties
        #
        #   @return [Array<HubspotSDK::Models::Marketing::CrmPropertyWrapper>]
        required :custom_properties,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::CrmPropertyWrapper] },
                 api_name: :customProperties

        # @!attribute event_name
        #   The name of the marketing event
        #
        #   @return [String]
        required :event_name, String, api_name: :eventName

        # @!attribute object_id_
        #   The internal ID of the marketing event in HubSpot
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!attribute updated_at
        #   The update date and time of the marketing event
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute app_info
        #
        #   @return [HubspotSDK::Models::Marketing::AppInfo, nil]
        optional :app_info, -> { HubspotSDK::Marketing::AppInfo }, api_name: :appInfo

        # @!attribute attendees
        #   Number of attended contact records of a marketing event
        #
        #   @return [Integer, nil]
        optional :attendees, Integer

        # @!attribute cancellations
        #   Number of cancelled contact records of a marketing event
        #
        #   @return [Integer, nil]
        optional :cancellations, Integer

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

        # @!attribute event_completed
        #   Indicates if the marketing event has been completed
        #
        #   @return [Boolean, nil]
        optional :event_completed, HubspotSDK::Internal::Type::Boolean, api_name: :eventCompleted

        # @!attribute event_description
        #   The description of the marketing event
        #
        #   @return [String, nil]
        optional :event_description, String, api_name: :eventDescription

        # @!attribute event_organizer
        #   The name of the organizer of the marketing event
        #
        #   @return [String, nil]
        optional :event_organizer, String, api_name: :eventOrganizer

        # @!attribute event_status
        #   The status of the marketing event
        #
        #   @return [String, nil]
        optional :event_status, String, api_name: :eventStatus

        # @!attribute event_status_v2
        #
        #   @return [String, nil]
        optional :event_status_v2, String, api_name: :eventStatusV2

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

        # @!attribute external_event_id
        #   The ID that is associated with this marketing event in the external event
        #   application
        #
        #   @return [String, nil]
        optional :external_event_id, String, api_name: :externalEventId

        # @!attribute no_shows
        #   Number of no-show contact records of a marketing event
        #
        #   @return [Integer, nil]
        optional :no_shows, Integer, api_name: :noShows

        # @!attribute registrants
        #   Number of registered contact records of a marketing event
        #
        #   @return [Integer, nil]
        optional :registrants, Integer

        # @!attribute start_date_time
        #   The start date and time of the marketing event
        #
        #   @return [Time, nil]
        optional :start_date_time, Time, api_name: :startDateTime

        # @!method initialize(created_at:, custom_properties:, event_name:, object_id_:, updated_at:, app_info: nil, attendees: nil, cancellations: nil, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_organizer: nil, event_status: nil, event_status_v2: nil, event_type: nil, event_url: nil, external_event_id: nil, no_shows: nil, registrants: nil, start_date_time: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::MarketingEventPublicReadResponseV2} for more
        #   details.
        #
        #   @param created_at [Time] The creation date and time of the marketing event
        #
        #   @param custom_properties [Array<HubspotSDK::Models::Marketing::CrmPropertyWrapper>]
        #
        #   @param event_name [String] The name of the marketing event
        #
        #   @param object_id_ [String] The internal ID of the marketing event in HubSpot
        #
        #   @param updated_at [Time] The update date and time of the marketing event
        #
        #   @param app_info [HubspotSDK::Models::Marketing::AppInfo]
        #
        #   @param attendees [Integer] Number of attended contact records of a marketing event
        #
        #   @param cancellations [Integer] Number of cancelled contact records of a marketing event
        #
        #   @param end_date_time [Time] The end date and time of the marketing event
        #
        #   @param event_cancelled [Boolean] Indicates if the marketing event has been cancelled
        #
        #   @param event_completed [Boolean] Indicates if the marketing event has been completed
        #
        #   @param event_description [String] The description of the marketing event
        #
        #   @param event_organizer [String] The name of the organizer of the marketing event
        #
        #   @param event_status [String] The status of the marketing event
        #
        #   @param event_status_v2 [String]
        #
        #   @param event_type [String] The type of the marketing event
        #
        #   @param event_url [String] A URL in the external event application where the marketing event can be managed
        #
        #   @param external_event_id [String] The ID that is associated with this marketing event in the external event applic
        #
        #   @param no_shows [Integer] Number of no-show contact records of a marketing event
        #
        #   @param registrants [Integer] Number of registered contact records of a marketing event
        #
        #   @param start_date_time [Time] The start date and time of the marketing event
      end
    end

    MarketingEventPublicReadResponseV2 = Marketing::MarketingEventPublicReadResponseV2
  end
end
