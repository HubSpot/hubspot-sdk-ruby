# typed: strong

module HubspotSDK
  module Resources
    class Events
      class Send
        # Send data for a single event completion.
        sig do
          params(
            event_name: String,
            email: String,
            object_id_: String,
            occurred_at: Time,
            properties: T::Hash[Symbol, String],
            utk: String,
            uuid: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def send_(
          # The internal name of the event (`pe<portalID>_eventName`). Can be retrieved
          # through the
          # [event definitions API](https://developers.hubspot.com/docs/reference/api/analytics-and-events/custom-events/custom-event-definitions#get-%2Fevents%2Fv3%2Fevent-definitions)
          # or in
          # [HubSpot's UI](https://knowledge.hubspot.com/reports/create-custom-behavioral-events-with-the-code-wizard#find-internal-name).
          event_name:,
          # The visitor's email address. Used for associating the event data with a CRM
          # record.
          email: nil,
          # The ID of the object that completed the event (e.g., contact ID or visitor ID).
          object_id_: nil,
          # The time when this event occurred. If this isn't set, the current time will be
          # used.
          occurred_at: nil,
          # The event properties to update. Takes the format of key-value pairs (property
          # internal name and property value). Learn more about
          # [HubSpot's default event properties](https://developers.hubspot.com/docs/guides/api/analytics-and-events/custom-events/custom-event-definitions#hubspot-s-default-event-properties).
          properties: nil,
          # The visitor's usertoken. Used for associating the event data with a CRM record.
          utk: nil,
          # Include a universally unique identifier to assign a unique ID to the event
          # completion. Can be useful for matching data between HubSpot and other external
          # systems.
          uuid: nil,
          request_options: {}
        )
        end

        # Send multiple event completions at once.
        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Events::BehavioralEventHTTPCompletionRequest::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def send_batch(inputs:, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
