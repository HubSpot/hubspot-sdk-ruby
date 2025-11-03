# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Timeline
        class Events
          # Send a single instance of event data to a specified event type.
          sig do
            params(
              event_template_id: String,
              tokens: T::Hash[Symbol, String],
              id: String,
              domain: String,
              email: String,
              extra_data: T.anything,
              object_id_: String,
              timeline_i_frame: HubspotSDK::Crm::TimelineEventIFrame::OrHash,
              timestamp: Time,
              utk: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::TimelineEventResponse)
          end
          def create(
            # The event template ID.
            event_template_id:,
            # A collection of token keys and values associated with the template tokens.
            tokens:,
            # Identifier for the event. This is optional, and we recommend you do not pass
            # this in. We will create one for you if you omit this. You can also use
            # `{{uuid}}` anywhere in the ID to generate a unique string, guaranteeing
            # uniqueness.
            id: nil,
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
            utk: nil,
            request_options: {}
          )
          end

          # Batch create multiple instances of timeline events based on an event template.
          # Once created, these event are immutable on the object timeline and cannot be
          # modified. If the event template was configured to update object properties via
          # `objectPropertyName`, this call will also attempt to updates those properties,
          # or add them if they don't exist.
          sig do
            params(
              inputs: T::Array[HubspotSDK::Crm::TimelineEvent::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def batch_create(
            # A collection of timeline events we want to create.
            inputs:,
            request_options: {}
          )
          end

          # Retrieve an event instance, specified by template ID and event ID.
          sig do
            params(
              event_id: String,
              event_template_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::TimelineEventResponse)
          end
          def get(
            # The event ID.
            event_id,
            # The event template ID.
            event_template_id:,
            request_options: {}
          )
          end

          # Retrieve details for a specific event, specified by template ID and event ID.
          sig do
            params(
              event_id: String,
              event_template_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::EventDetail)
          end
          def get_detail(
            # The event ID.
            event_id,
            # The event template ID.
            event_template_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
