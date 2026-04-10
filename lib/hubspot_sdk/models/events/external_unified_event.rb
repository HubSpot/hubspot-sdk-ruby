# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      # @see HubSpotSDK::Resources::Events::Occurrences#list
      class ExternalUnifiedEvent < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   A unique identifier for the event.
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type
        #   The format of the `eventType` string is `ae{appId}_{eventTypeLabel}`,
        #   `pe{portalId}_{eventTypeLabel}`, or just `e_{eventTypeLabel}` for HubSpot
        #   events.
        #
        #   @return [String]
        required :event_type, String, api_name: :eventType

        # @!attribute object_id_
        #   The objectId of the object which did the event.
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!attribute object_type
        #   The objectType for the object which did the event.
        #
        #   @return [String]
        required :object_type, String, api_name: :objectType

        # @!attribute occurred_at
        #   An ISO 8601 timestamp when the event occurred.
        #
        #   @return [Time]
        required :occurred_at, Time, api_name: :occurredAt

        # @!attribute properties
        #   A key-value map of event-specific properties. The available properties depend on
        #   the event type definition.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!method initialize(id:, event_type:, object_id_:, object_type:, occurred_at:, properties:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Events::ExternalUnifiedEvent} for more details.
        #
        #   @param id [String] A unique identifier for the event.
        #
        #   @param event_type [String] The format of the `eventType` string is `ae{appId}_{eventTypeLabel}`, `pe{portal
        #
        #   @param object_id_ [String] The objectId of the object which did the event.
        #
        #   @param object_type [String] The objectType for the object which did the event.
        #
        #   @param occurred_at [Time] An ISO 8601 timestamp when the event occurred.
        #
        #   @param properties [Hash{Symbol=>String}] A key-value map of event-specific properties. The available properties depend on
      end
    end

    ExternalUnifiedEvent = Events::ExternalUnifiedEvent
  end
end
