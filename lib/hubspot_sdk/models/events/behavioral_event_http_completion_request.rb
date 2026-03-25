# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class BehavioralEventHTTPCompletionRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event_name
        #   Internal name of the event-type to trigger
        #
        #   @return [String]
        required :event_name, String, api_name: :eventName

        # @!attribute properties
        #   Map of properties for the event in the format property internal name - property
        #   value
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute email
        #   Email of visitor
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute object_id_
        #   The object id that this event occurred on. Could be a contact id or a visitor
        #   id.
        #
        #   @return [String, nil]
        optional :object_id_, String, api_name: :objectId

        # @!attribute occurred_at
        #   The time when this event occurred (if any). If this isn't set, the current time
        #   will be used
        #
        #   @return [Time, nil]
        optional :occurred_at, Time, api_name: :occurredAt

        # @!attribute utk
        #   User token
        #
        #   @return [String, nil]
        optional :utk, String

        # @!attribute uuid
        #
        #   @return [String, nil]
        optional :uuid, String

        # @!method initialize(event_name:, properties:, email: nil, object_id_: nil, occurred_at: nil, utk: nil, uuid: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::BehavioralEventHTTPCompletionRequest} for more
        #   details.
        #
        #   @param event_name [String] Internal name of the event-type to trigger
        #
        #   @param properties [Hash{Symbol=>String}] Map of properties for the event in the format property internal name - property
        #
        #   @param email [String] Email of visitor
        #
        #   @param object_id_ [String] The object id that this event occurred on. Could be a contact id or a visitor id
        #
        #   @param occurred_at [Time] The time when this event occurred (if any). If this isn't set, the current time
        #
        #   @param utk [String] User token
        #
        #   @param uuid [String]
      end
    end
  end
end
