# typed: strong

module HubSpotSDK
  module Resources
    class Events
      class Send
        # Send multiple event occurrences at once.
        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Events::BehavioralEventHTTPCompletionRequest::OrHash
              ],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def batch_send(inputs:, request_options: {})
        end

        # Send data for a single custom event occurrence.
        sig do
          params(
            event_name: String,
            properties: T::Hash[Symbol, String],
            email: String,
            object_id_: String,
            occurred_at: Time,
            utk: String,
            uuid: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def send_(
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
          uuid: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
