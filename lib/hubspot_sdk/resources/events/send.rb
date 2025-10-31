# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Events
      class Send
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::SendSendParams} for more details.
        #
        # Send data for a single event completion.
        #
        # @overload send_(event_name:, email: nil, object_id_: nil, occurred_at: nil, properties: nil, utk: nil, uuid: nil, request_options: {})
        #
        # @param event_name [String] The internal name of the event (`pe<portalID>_eventName`). Can be retrieved thro
        #
        # @param email [String] The visitor's email address. Used for associating the event data with a CRM reco
        #
        # @param object_id_ [String] The ID of the object that completed the event (e.g., contact ID or visitor ID).
        #
        # @param occurred_at [Time] The time when this event occurred. If this isn't set, the current time will be u
        #
        # @param properties [Hash{Symbol=>String}] The event properties to update. Takes the format of key-value pairs (property in
        #
        # @param utk [String] The visitor's usertoken. Used for associating the event data with a CRM record.
        #
        # @param uuid [String] Include a universally unique identifier to assign a unique ID to the event compl
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Events::SendSendParams
        def send_(params)
          parsed, options = HubspotSDK::Events::SendSendParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/v3/send",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Send multiple event completions at once.
        #
        # @overload send_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Events::BehavioralEventHTTPCompletionRequest>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Events::SendSendBatchParams
        def send_batch(params)
          parsed, options = HubspotSDK::Events::SendSendBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/v3/send/batch",
            body: parsed,
            model: NilClass,
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
