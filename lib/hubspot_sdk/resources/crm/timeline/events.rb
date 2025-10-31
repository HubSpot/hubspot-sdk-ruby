# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Timeline
        class Events
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Timeline::EventCreateParams} for more details.
          #
          # Send a single instance of event data to a specified event type.
          #
          # @overload create(event_template_id:, tokens:, id: nil, domain: nil, email: nil, extra_data: nil, object_id_: nil, timeline_i_frame: nil, timestamp: nil, utk: nil, request_options: {})
          #
          # @param event_template_id [String] The event template ID.
          #
          # @param tokens [Hash{Symbol=>String}] A collection of token keys and values associated with the template tokens.
          #
          # @param id [String] Identifier for the event. This is optional, and we recommend you do not pass thi
          #
          # @param domain [String] The event domain (often paired with utk).
          #
          # @param email [String] The email address used for contact-specific events. This can be used to identify
          #
          # @param extra_data [Object] Additional event-specific data that can be interpreted by the template's markdow
          #
          # @param object_id_ [String] The CRM object identifier. This is required for every event other than contacts
          #
          # @param timeline_i_frame [HubspotSDK::Models::CRM::TimelineEventIFrame]
          #
          # @param timestamp [Time] The time the event occurred. If not passed in, the curren time will be assumed.
          #
          # @param utk [String] Use the `utk` parameter to associate an event with a contact by `usertoken`. Thi
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::TimelineEventResponse]
          #
          # @see HubspotSDK::Models::CRM::Timeline::EventCreateParams
          def create(params)
            parsed, options = HubspotSDK::CRM::Timeline::EventCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "integrators/timeline/v3/events",
              body: parsed,
              model: HubspotSDK::CRM::TimelineEventResponse,
              options: options
            )
          end

          # Batch create multiple instances of timeline events based on an event template.
          # Once created, these event are immutable on the object timeline and cannot be
          # modified. If the event template was configured to update object properties via
          # `objectPropertyName`, this call will also attempt to updates those properties,
          # or add them if they don't exist.
          #
          # @overload batch_create(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::CRM::TimelineEvent>] A collection of timeline events we want to create.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::CRM::Timeline::EventBatchCreateParams
          def batch_create(params)
            parsed, options = HubspotSDK::CRM::Timeline::EventBatchCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "integrators/timeline/v3/events/batch/create",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Retrieve an event instance, specified by template ID and event ID.
          #
          # @overload get(event_id, event_template_id:, request_options: {})
          #
          # @param event_id [String] The event ID.
          #
          # @param event_template_id [String] The event template ID.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::TimelineEventResponse]
          #
          # @see HubspotSDK::Models::CRM::Timeline::EventGetParams
          def get(event_id, params)
            parsed, options = HubspotSDK::CRM::Timeline::EventGetParams.dump_request(params)
            event_template_id =
              parsed.delete(:event_template_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["integrators/timeline/v3/events/%1$s/%2$s", event_template_id, event_id],
              model: HubspotSDK::CRM::TimelineEventResponse,
              options: options
            )
          end

          # Retrieve details for a specific event, specified by template ID and event ID.
          #
          # @overload get_detail(event_id, event_template_id:, request_options: {})
          #
          # @param event_id [String] The event ID.
          #
          # @param event_template_id [String] The event template ID.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::EventDetail]
          #
          # @see HubspotSDK::Models::CRM::Timeline::EventGetDetailParams
          def get_detail(event_id, params)
            parsed, options = HubspotSDK::CRM::Timeline::EventGetDetailParams.dump_request(params)
            event_template_id =
              parsed.delete(:event_template_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["integrators/timeline/v3/events/%1$s/%2$s/detail", event_template_id, event_id],
              model: HubspotSDK::CRM::EventDetail,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
