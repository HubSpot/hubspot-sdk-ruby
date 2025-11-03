# typed: strong

module HubspotSDK
  module Models
    module Crm
      class TimelineEventResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::TimelineEventResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Identifier for the event. This should be unique to the app and event template.
        # If you use the same ID for different CRM objects, the last to be processed will
        # win and the first will not have a record. You can also use `{{uuid}}` anywhere
        # in the ID to generate a unique string, guaranteeing uniqueness.
        sig { returns(String) }
        attr_accessor :id

        # The event template ID.
        sig { returns(String) }
        attr_accessor :event_template_id

        # The ObjectType associated with the EventTemplate.
        sig { returns(String) }
        attr_accessor :object_type

        # A collection of token keys and values associated with the template tokens.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :tokens

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The event domain (often paired with utk).
        sig { returns(T.nilable(String)) }
        attr_reader :domain

        sig { params(domain: String).void }
        attr_writer :domain

        # The email address used for contact-specific events. This can be used to identify
        # existing contacts, create new ones, or change the email for an existing contact
        # (if paired with the `objectId`).
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Additional event-specific data that can be interpreted by the template's
        # markdown.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :extra_data

        sig { params(extra_data: T.anything).void }
        attr_writer :extra_data

        # The CRM object identifier. This is required for every event other than contacts
        # (where utk or email can be used).
        sig { returns(T.nilable(String)) }
        attr_reader :object_id_

        sig { params(object_id_: String).void }
        attr_writer :object_id_

        sig { returns(T.nilable(HubspotSDK::Crm::TimelineEventIFrame)) }
        attr_reader :timeline_i_frame

        sig do
          params(
            timeline_i_frame: HubspotSDK::Crm::TimelineEventIFrame::OrHash
          ).void
        end
        attr_writer :timeline_i_frame

        # The time the event occurred. If not passed in, the curren time will be assumed.
        # This is used to determine where an event is shown on a CRM object's timeline.
        sig { returns(T.nilable(Time)) }
        attr_reader :timestamp

        sig { params(timestamp: Time).void }
        attr_writer :timestamp

        # Use the `utk` parameter to associate an event with a contact by `usertoken`.
        # This is recommended if you don't know a user's email, but have an identifying
        # user token in your cookie.
        sig { returns(T.nilable(String)) }
        attr_reader :utk

        sig { params(utk: String).void }
        attr_writer :utk

        # The current state of the timeline event.
        sig do
          params(
            id: String,
            event_template_id: String,
            object_type: String,
            tokens: T::Hash[Symbol, String],
            created_at: Time,
            domain: String,
            email: String,
            extra_data: T.anything,
            object_id_: String,
            timeline_i_frame: HubspotSDK::Crm::TimelineEventIFrame::OrHash,
            timestamp: Time,
            utk: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier for the event. This should be unique to the app and event template.
          # If you use the same ID for different CRM objects, the last to be processed will
          # win and the first will not have a record. You can also use `{{uuid}}` anywhere
          # in the ID to generate a unique string, guaranteeing uniqueness.
          id:,
          # The event template ID.
          event_template_id:,
          # The ObjectType associated with the EventTemplate.
          object_type:,
          # A collection of token keys and values associated with the template tokens.
          tokens:,
          created_at: nil,
          # The event domain (often paired with utk).
          domain: nil,
          # The email address used for contact-specific events. This can be used to identify
          # existing contacts, create new ones, or change the email for an existing contact
          # (if paired with the `objectId`).
          email: nil,
          # Additional event-specific data that can be interpreted by the template's
          # markdown.
          extra_data: nil,
          # The CRM object identifier. This is required for every event other than contacts
          # (where utk or email can be used).
          object_id_: nil,
          timeline_i_frame: nil,
          # The time the event occurred. If not passed in, the curren time will be assumed.
          # This is used to determine where an event is shown on a CRM object's timeline.
          timestamp: nil,
          # Use the `utk` parameter to associate an event with a contact by `usertoken`.
          # This is recommended if you don't know a user's email, but have an identifying
          # user token in your cookie.
          utk: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_template_id: String,
              object_type: String,
              tokens: T::Hash[Symbol, String],
              created_at: Time,
              domain: String,
              email: String,
              extra_data: T.anything,
              object_id_: String,
              timeline_i_frame: HubspotSDK::Crm::TimelineEventIFrame,
              timestamp: Time,
              utk: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
