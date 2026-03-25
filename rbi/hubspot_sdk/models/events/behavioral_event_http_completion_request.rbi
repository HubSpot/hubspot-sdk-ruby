# typed: strong

module HubspotSDK
  module Models
    module Events
      class BehavioralEventHTTPCompletionRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::BehavioralEventHTTPCompletionRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The event's fully qualified name. This value (formatted as `pe{HubID}_{name}`)
        # can be retrieved through the
        # [event definitions API](https://developers.hubspot.com/docs/reference/api/analytics-and-events/custom-events/custom-event-definitions#get-%2Fevents%2Fv3%2Fevent-definitions)
        # or in
        # [HubSpot's UI](https://knowledge.hubspot.com/reports/create-custom-behavioral-events-with-the-code-wizard#find-internal-name).
        sig { returns(String) }
        attr_accessor :event_name

        # The event properties to update. Takes the format of key-value pairs (property
        # internal name and property value). Learn more about
        # [HubSpot's default event properties](https://developers.hubspot.com/docs/guides/api/analytics-and-events/custom-events/custom-event-definitions#hubspot-s-default-event-properties).
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        # The visitor's email address. Used for associating the event data with a CRM
        # record.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The ID of the record for which the event occurred (e.g., contact ID or visitor
        # ID).
        sig { returns(T.nilable(String)) }
        attr_reader :object_id_

        sig { params(object_id_: String).void }
        attr_writer :object_id_

        # The time when this event occurred. If this isn't set, the current time will be
        # used.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        # The visitor's usertoken. Used for associating the event data with a CRM record.
        sig { returns(T.nilable(String)) }
        attr_reader :utk

        sig { params(utk: String).void }
        attr_writer :utk

        # Include a universally unique identifier to assign a unique ID to the event
        # occurrence. Can be useful for matching data between HubSpot and other external
        # systems.
        sig { returns(T.nilable(String)) }
        attr_reader :uuid

        sig { params(uuid: String).void }
        attr_writer :uuid

        sig do
          params(
            event_name: String,
            properties: T::Hash[Symbol, String],
            email: String,
            object_id_: String,
            occurred_at: Time,
            utk: String,
            uuid: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The event's fully qualified name. This value (formatted as `pe{HubID}_{name}`)
          # can be retrieved through the
          # [event definitions API](https://developers.hubspot.com/docs/reference/api/analytics-and-events/custom-events/custom-event-definitions#get-%2Fevents%2Fv3%2Fevent-definitions)
          # or in
          # [HubSpot's UI](https://knowledge.hubspot.com/reports/create-custom-behavioral-events-with-the-code-wizard#find-internal-name).
          event_name:,
          # The event properties to update. Takes the format of key-value pairs (property
          # internal name and property value). Learn more about
          # [HubSpot's default event properties](https://developers.hubspot.com/docs/guides/api/analytics-and-events/custom-events/custom-event-definitions#hubspot-s-default-event-properties).
          properties:,
          # The visitor's email address. Used for associating the event data with a CRM
          # record.
          email: nil,
          # The ID of the record for which the event occurred (e.g., contact ID or visitor
          # ID).
          object_id_: nil,
          # The time when this event occurred. If this isn't set, the current time will be
          # used.
          occurred_at: nil,
          # The visitor's usertoken. Used for associating the event data with a CRM record.
          utk: nil,
          # Include a universally unique identifier to assign a unique ID to the event
          # occurrence. Can be useful for matching data between HubSpot and other external
          # systems.
          uuid: nil
        )
        end

        sig do
          override.returns(
            {
              event_name: String,
              properties: T::Hash[Symbol, String],
              email: String,
              object_id_: String,
              occurred_at: Time,
              utk: String,
              uuid: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
