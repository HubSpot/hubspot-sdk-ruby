# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#update
      class MarketingEventPublicDefaultResponseV2 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute custom_properties
        #
        #   @return [Array<HubspotSDK::Models::Marketing::CRMPropertyWrapper>]
        required :custom_properties,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::CRMPropertyWrapper] },
                 api_name: :customProperties

        # @!attribute event_name
        #
        #   @return [String]
        required :event_name, String, api_name: :eventName

        # @!attribute object_id_
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute app_info
        #
        #   @return [HubspotSDK::Models::Marketing::AppInfo, nil]
        optional :app_info, -> { HubspotSDK::Marketing::AppInfo }, api_name: :appInfo

        # @!attribute end_date_time
        #
        #   @return [Time, nil]
        optional :end_date_time, Time, api_name: :endDateTime

        # @!attribute event_cancelled
        #
        #   @return [Boolean, nil]
        optional :event_cancelled, HubspotSDK::Internal::Type::Boolean, api_name: :eventCancelled

        # @!attribute event_completed
        #
        #   @return [Boolean, nil]
        optional :event_completed, HubspotSDK::Internal::Type::Boolean, api_name: :eventCompleted

        # @!attribute event_description
        #
        #   @return [String, nil]
        optional :event_description, String, api_name: :eventDescription

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

        # @!method initialize(created_at:, custom_properties:, event_name:, object_id_:, updated_at:, app_info: nil, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_organizer: nil, event_type: nil, event_url: nil, start_date_time: nil)
        #   @param created_at [Time]
        #   @param custom_properties [Array<HubspotSDK::Models::Marketing::CRMPropertyWrapper>]
        #   @param event_name [String]
        #   @param object_id_ [String]
        #   @param updated_at [Time]
        #   @param app_info [HubspotSDK::Models::Marketing::AppInfo]
        #   @param end_date_time [Time]
        #   @param event_cancelled [Boolean]
        #   @param event_completed [Boolean]
        #   @param event_description [String]
        #   @param event_organizer [String]
        #   @param event_type [String]
        #   @param event_url [String]
        #   @param start_date_time [Time]
      end
    end
  end
end
