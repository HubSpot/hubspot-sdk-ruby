# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Events
      class Send
        # Send multiple event occurrences at once.
        #
        # @overload batch_send(inputs:, request_options: {})
        #
        # @param inputs [Array<HubSpotSDK::Models::Events::BehavioralEventHTTPCompletionRequest>]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Events::SendBatchSendParams
        def batch_send(params)
          parsed, options = HubSpotSDK::Events::SendBatchSendParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/2026-03/send/batch",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Events::SendSendParams} for more details.
        #
        # Send data for a single custom event occurrence.
        #
        # @overload send_(event_name:, properties:, email: nil, object_id_: nil, occurred_at: nil, utk: nil, uuid: nil, request_options: {})
        #
        # @param event_name [String] Internal name of the event-type to trigger
        #
        # @param properties [Hash{Symbol=>String}] Map of properties for the event in the format property internal name - property
        #
        # @param email [String] Email of visitor
        #
        # @param object_id_ [String] The object id that this event occurred on. Could be a contact id or a visitor id
        #
        # @param occurred_at [Time] The time when this event occurred (if any). If this isn't set, the current time
        #
        # @param utk [String] User token
        #
        # @param uuid [String]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Events::SendSendParams
        def send_(params)
          parsed, options = HubSpotSDK::Events::SendSendParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/2026-03/send",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
