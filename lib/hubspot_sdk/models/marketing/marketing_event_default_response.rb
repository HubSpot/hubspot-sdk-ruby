# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#create
      class MarketingEventDefaultResponse < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Array<HubspotSDK::Models::Marketing::PropertyValue>, nil]
        optional :custom_properties,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PropertyValue] },
                 api_name: :customProperties

        # @!attribute end_date_time
        #   The end date and time of the marketing event.
        #
        #   @return [Time, nil]
        optional :end_date_time, Time, api_name: :endDateTime

        # @!attribute event_cancelled
        #   Indicates if the marketing event has been cancelled.
        #
        #   @return [Boolean, nil]
        optional :event_cancelled, HubspotSDK::Internal::Type::Boolean, api_name: :eventCancelled

        # @!attribute event_completed
        #
        #   @return [Boolean, nil]
        optional :event_completed, HubspotSDK::Internal::Type::Boolean, api_name: :eventCompleted

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
        #   The URL in the external event application where the marketing event can be
        #   managed.
        #
        #   @return [String, nil]
        optional :event_url, String, api_name: :eventUrl

        # @!attribute object_id_
        #
        #   @return [String, nil]
        optional :object_id_, String, api_name: :objectId

        # @!attribute start_date_time
        #   The start date and time of the marketing event.
        #
        #   @return [Time, nil]
        optional :start_date_time, Time, api_name: :startDateTime

        # @!method initialize(event_name:, event_organizer:, custom_properties: nil, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_type: nil, event_url: nil, object_id_: nil, start_date_time: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::MarketingEventDefaultResponse} for more details.
        #
        #   @param event_name [String] The name of the marketing event.
        #
        #   @param event_organizer [String] The name of the organizer of the marketing event.
        #
        #   @param custom_properties [Array<HubspotSDK::Models::Marketing::PropertyValue>] A list of PropertyValues. These can be whatever kind of property names and value
        #
        #   @param end_date_time [Time] The end date and time of the marketing event.
        #
        #   @param event_cancelled [Boolean] Indicates if the marketing event has been cancelled.
        #
        #   @param event_completed [Boolean]
        #
        #   @param event_description [String] The description of the marketing event.
        #
        #   @param event_type [String] The type of the marketing event.
        #
        #   @param event_url [String] The URL in the external event application where the marketing event can be manag
        #
        #   @param object_id_ [String]
        #
        #   @param start_date_time [Time] The start date and time of the marketing event.
      end
    end
  end
end
