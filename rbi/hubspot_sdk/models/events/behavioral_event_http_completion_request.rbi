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

        # Internal name of the event-type to trigger
        sig { returns(String) }
        attr_accessor :event_name

        # Map of properties for the event in the format property internal name - property
        # value
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        # Email of visitor
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The object id that this event occurred on. Could be a contact id or a visitor
        # id.
        sig { returns(T.nilable(String)) }
        attr_reader :object_id_

        sig { params(object_id_: String).void }
        attr_writer :object_id_

        # The time when this event occurred (if any). If this isn't set, the current time
        # will be used
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        # User token
        sig { returns(T.nilable(String)) }
        attr_reader :utk

        sig { params(utk: String).void }
        attr_writer :utk

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
          # Internal name of the event-type to trigger
          event_name:,
          # Map of properties for the event in the format property internal name - property
          # value
          properties:,
          # Email of visitor
          email: nil,
          # The object id that this event occurred on. Could be a contact id or a visitor
          # id.
          object_id_: nil,
          # The time when this event occurred (if any). If this isn't set, the current time
          # will be used
          occurred_at: nil,
          # User token
          utk: nil,
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
