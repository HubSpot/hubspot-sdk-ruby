# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class AppEventOccurrence < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type_name
        #
        #   @return [String]
        required :event_type_name, String, api_name: :eventTypeName

        # @!attribute properties
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute domain
        #
        #   @return [String, nil]
        optional :domain, String

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute extra_data
        #
        #   @return [Object, nil]
        optional :extra_data, HubSpotSDK::Internal::Type::Unknown, api_name: :extraData

        # @!attribute object_id_
        #
        #   @return [String, nil]
        optional :object_id_, String, api_name: :objectId

        # @!attribute object_type_fully_qualified_name
        #
        #   @return [String, nil]
        optional :object_type_fully_qualified_name, String, api_name: :objectTypeFullyQualifiedName

        # @!attribute timeline_i_frame
        #
        #   @return [HubSpotSDK::Models::Crm::TimelineEventIFrame, nil]
        optional :timeline_i_frame, -> { HubSpotSDK::Crm::TimelineEventIFrame }, api_name: :timelineIFrame

        # @!attribute timestamp
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!attribute utk
        #
        #   @return [String, nil]
        optional :utk, String

        # @!method initialize(id:, event_type_name:, properties:, domain: nil, email: nil, extra_data: nil, object_id_: nil, object_type_fully_qualified_name: nil, timeline_i_frame: nil, timestamp: nil, utk: nil)
        #   @param id [String]
        #   @param event_type_name [String]
        #   @param properties [Hash{Symbol=>String}]
        #   @param domain [String]
        #   @param email [String]
        #   @param extra_data [Object]
        #   @param object_id_ [String]
        #   @param object_type_fully_qualified_name [String]
        #   @param timeline_i_frame [HubSpotSDK::Models::Crm::TimelineEventIFrame]
        #   @param timestamp [Time]
        #   @param utk [String]
      end
    end
  end
end
