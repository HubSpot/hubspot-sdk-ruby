# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Threads
        # @overload update(thread_id, body_archived: nil, status: nil, request_options: {})
        #
        # @param thread_id [Integer] Path param
        #
        # @param body_archived [Boolean] Body param
        #
        # @param status [Symbol, HubspotSDK::Models::Conversations::PublicThreadUpdateRequest::Status] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicThread]
        #
        # @see HubspotSDK::Models::Conversations::ThreadUpdateParams
        def update(thread_id, params = {})
          parsed, options = HubspotSDK::Conversations::ThreadUpdateParams.dump_request(params)
          query_params = [:query_archived]
          @client.request(
            method: :patch,
            path: ["conversations/v3/conversations/threads/%1$s", thread_id],
            query: parsed.slice(*query_params).transform_keys(query_archived: "archived"),
            body: parsed.except(*query_params),
            model: HubspotSDK::Conversations::PublicThread,
            options: options
          )
        end

        # @overload list(after: nil, archived: nil, associated_contact_id: nil, association: nil, inbox_id: nil, latest_message_timestamp_after: nil, limit: nil, property: nil, sort: nil, thread_status: nil, request_options: {})
        #
        # @param after [String]
        # @param archived [Boolean]
        # @param associated_contact_id [Integer]
        # @param association [Array<Symbol, HubspotSDK::Models::Conversations::ThreadListParams::Association>]
        # @param inbox_id [Array<Integer>]
        # @param latest_message_timestamp_after [Time]
        # @param limit [Integer]
        # @param property [String]
        # @param sort [Array<String>]
        # @param thread_status [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Conversations::PublicThread>]
        #
        # @see HubspotSDK::Models::Conversations::ThreadListParams
        def list(params = {})
          parsed, options = HubspotSDK::Conversations::ThreadListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "conversations/v3/conversations/threads",
            query: parsed.transform_keys(
              associated_contact_id: "associatedContactId",
              inbox_id: "inboxId",
              latest_message_timestamp_after: "latestMessageTimestampAfter",
              thread_status: "threadStatus"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Conversations::PublicThread,
            options: options
          )
        end

        # @overload delete(thread_id, request_options: {})
        #
        # @param thread_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Conversations::ThreadDeleteParams
        def delete(thread_id, params = {})
          @client.request(
            method: :delete,
            path: ["conversations/v3/conversations/threads/%1$s", thread_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @overload get(thread_id, archived: nil, association: nil, property: nil, request_options: {})
        #
        # @param thread_id [Integer]
        # @param archived [Boolean]
        # @param association [Array<Symbol, HubspotSDK::Models::Conversations::ThreadGetParams::Association>]
        # @param property [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicThread]
        #
        # @see HubspotSDK::Models::Conversations::ThreadGetParams
        def get(thread_id, params = {})
          parsed, options = HubspotSDK::Conversations::ThreadGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/threads/%1$s", thread_id],
            query: parsed,
            model: HubspotSDK::Conversations::PublicThread,
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
