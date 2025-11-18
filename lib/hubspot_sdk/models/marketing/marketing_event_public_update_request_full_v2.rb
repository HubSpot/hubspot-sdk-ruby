# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventPublicUpdateRequestFullV2 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute custom_properties
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PropertyValue>]
        required :custom_properties,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PropertyValue] },
                 api_name: :customProperties

        # @!attribute object_id_
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!attribute end_date_time
        #
        #   @return [Time, nil]
        optional :end_date_time, Time, api_name: :endDateTime

        # @!attribute event_cancelled
        #
        #   @return [Boolean, nil]
        optional :event_cancelled, HubspotSDK::Internal::Type::Boolean, api_name: :eventCancelled

        # @!attribute event_description
        #
        #   @return [String, nil]
        optional :event_description, String, api_name: :eventDescription

        # @!attribute event_name
        #
        #   @return [String, nil]
        optional :event_name, String, api_name: :eventName

        # @!attribute event_organizer
        #
        #   @return [String, nil]
        optional :event_organizer, String, api_name: :eventOrganizer

        # @!attribute event_type
        #
        #   @return [String, nil]
        optional :event_type, String, api_name: :eventType

        # @!attribute event_url
        #
        #   @return [String, nil]
        optional :event_url, String, api_name: :eventUrl

        # @!attribute start_date_time
        #
        #   @return [Time, nil]
        optional :start_date_time, Time, api_name: :startDateTime

        # @!method initialize(custom_properties:, object_id_:, end_date_time: nil, event_cancelled: nil, event_description: nil, event_name: nil, event_organizer: nil, event_type: nil, event_url: nil, start_date_time: nil)
        #   @param custom_properties [Array<HubspotSDK::Models::Marketing::PropertyValue>]
        #   @param object_id_ [String]
        #   @param end_date_time [Time]
        #   @param event_cancelled [Boolean]
        #   @param event_description [String]
        #   @param event_name [String]
        #   @param event_organizer [String]
        #   @param event_type [String]
        #   @param event_url [String]
        #   @param start_date_time [Time]
      end
    end

    MarketingEventPublicUpdateRequestFullV2 = Marketing::MarketingEventPublicUpdateRequestFullV2
  end
end
