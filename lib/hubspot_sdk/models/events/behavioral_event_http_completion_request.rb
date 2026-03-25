# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class BehavioralEventHTTPCompletionRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event_name
        #   The event's fully qualified name. This value (formatted as `pe{HubID}_{name}`)
        #   can be retrieved through the
        #   [event definitions API](https://developers.hubspot.com/docs/reference/api/analytics-and-events/custom-events/custom-event-definitions#get-%2Fevents%2Fv3%2Fevent-definitions)
        #   or in
        #   [HubSpot's UI](https://knowledge.hubspot.com/reports/create-custom-behavioral-events-with-the-code-wizard#find-internal-name).
        #
        #   @return [String]
        required :event_name, String, api_name: :eventName

        # @!attribute properties
        #   The event properties to update. Takes the format of key-value pairs (property
        #   internal name and property value). Learn more about
        #   [HubSpot's default event properties](https://developers.hubspot.com/docs/guides/api/analytics-and-events/custom-events/custom-event-definitions#hubspot-s-default-event-properties).
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute email
        #   The visitor's email address. Used for associating the event data with a CRM
        #   record.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute object_id_
        #   The ID of the record for which the event occurred (e.g., contact ID or visitor
        #   ID).
        #
        #   @return [String, nil]
        optional :object_id_, String, api_name: :objectId

        # @!attribute occurred_at
        #   The time when this event occurred. If this isn't set, the current time will be
        #   used.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time, api_name: :occurredAt

        # @!attribute utk
        #   The visitor's usertoken. Used for associating the event data with a CRM record.
        #
        #   @return [String, nil]
        optional :utk, String

        # @!attribute uuid
        #   Include a universally unique identifier to assign a unique ID to the event
        #   occurrence. Can be useful for matching data between HubSpot and other external
        #   systems.
        #
        #   @return [String, nil]
        optional :uuid, String

        # @!method initialize(event_name:, properties:, email: nil, object_id_: nil, occurred_at: nil, utk: nil, uuid: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::BehavioralEventHTTPCompletionRequest} for more
        #   details.
        #
        #   @param event_name [String] The event's fully qualified name. This value (formatted as `pe{HubID}_{name}`) c
        #
        #   @param properties [Hash{Symbol=>String}] The event properties to update. Takes the format of key-value pairs (property in
        #
        #   @param email [String] The visitor's email address. Used for associating the event data with a CRM reco
        #
        #   @param object_id_ [String] The ID of the record for which the event occurred (e.g., contact ID or visitor I
        #
        #   @param occurred_at [Time] The time when this event occurred. If this isn't set, the current time will be u
        #
        #   @param utk [String] The visitor's usertoken. Used for associating the event data with a CRM record.
        #
        #   @param uuid [String] Include a universally unique identifier to assign a unique ID to the event occur
      end
    end
  end
end
