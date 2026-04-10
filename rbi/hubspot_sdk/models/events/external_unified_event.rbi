# typed: strong

module HubSpotSDK
  module Models
    ExternalUnifiedEvent = Events::ExternalUnifiedEvent

    module Events
      class ExternalUnifiedEvent < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::ExternalUnifiedEvent,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A unique identifier for the event.
        sig { returns(String) }
        attr_accessor :id

        # The format of the `eventType` string is `ae{appId}_{eventTypeLabel}`,
        # `pe{portalId}_{eventTypeLabel}`, or just `e_{eventTypeLabel}` for HubSpot
        # events.
        sig { returns(String) }
        attr_accessor :event_type

        # The objectId of the object which did the event.
        sig { returns(String) }
        attr_accessor :object_id_

        # The objectType for the object which did the event.
        sig { returns(String) }
        attr_accessor :object_type

        # An ISO 8601 timestamp when the event occurred.
        sig { returns(Time) }
        attr_accessor :occurred_at

        # A key-value map of event-specific properties. The available properties depend on
        # the event type definition.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        sig do
          params(
            id: String,
            event_type: String,
            object_id_: String,
            object_type: String,
            occurred_at: Time,
            properties: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique identifier for the event.
          id:,
          # The format of the `eventType` string is `ae{appId}_{eventTypeLabel}`,
          # `pe{portalId}_{eventTypeLabel}`, or just `e_{eventTypeLabel}` for HubSpot
          # events.
          event_type:,
          # The objectId of the object which did the event.
          object_id_:,
          # The objectType for the object which did the event.
          object_type:,
          # An ISO 8601 timestamp when the event occurred.
          occurred_at:,
          # A key-value map of event-specific properties. The available properties depend on
          # the event type definition.
          properties:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type: String,
              object_id_: String,
              object_type: String,
              occurred_at: Time,
              properties: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
