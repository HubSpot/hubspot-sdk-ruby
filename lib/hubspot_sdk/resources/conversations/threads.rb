# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Threads
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Conversations::ThreadUpdateParams} for more details.
        #
        # Updates a single thread. Either a thread's status can be updated, or the thread
        # can be restored.
        #
        # @overload update(thread_id, body_archived: nil, status: nil, request_options: {})
        #
        # @param thread_id [Integer] Path param: The unique ID of the thread.
        #
        # @param body_archived [Boolean] Body param: Whether this thread is archived. Set to false to restore the thread.
        #
        # @param status [Symbol, HubspotSDK::Models::Conversations::PublicThreadUpdateRequest::Status] Body param: The thread's status: `OPEN` or `CLOSED`.
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

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Conversations::ThreadListParams} for more details.
        #
        # Retrieve a list of threads, with optional filters and sorting.
        #
        # @overload list(after: nil, archived: nil, associated_contact_id: nil, association: nil, inbox_id: nil, latest_message_timestamp_after: nil, limit: nil, property: nil, sort: nil, thread_status: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param associated_contact_id [Integer] Retrieve a filtered list of conversations for a specific contact by its ID. This
        #
        # @param association [Array<Symbol, HubspotSDK::Models::Conversations::ThreadListParams::Association>] You can specify an association type here of `TICKET`. If this is set the respons
        #
        # @param inbox_id [Array<Integer>] The ID of the conversations inbox you can optionally include to retrieve the ass
        #
        # @param latest_message_timestamp_after [Time] The minimum(earliest) `latestMessageTimestamp`. This is required only when sorti
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param property [String] A specific property to include in the thread response.
        #
        # @param sort [Array<String>] Set the sort order of the response. Valid options are `id` (default) and `latest
        #
        # @param thread_status [String] The status of the associated conversations to filter by (either `OPEN` or `CLOSE
        #
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

        # Archives a single thread. The thread will be permanently deleted 30 days after
        # placed in an archived state.
        #
        # @overload delete(thread_id, request_options: {})
        #
        # @param thread_id [Integer] The unique ID of the thread.
        #
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

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Conversations::ThreadGetParams} for more details.
        #
        # Retrieve a single thread by its ID
        #
        # @overload get(thread_id, archived: nil, association: nil, property: nil, request_options: {})
        #
        # @param thread_id [Integer] The unique ID of the thread.
        #
        # @param archived [Boolean] Whether to return only results that have been archived. Default is false.
        #
        # @param association [Array<Symbol, HubspotSDK::Models::Conversations::ThreadGetParams::Association>] You can specify an association type here of `TICKET`. If this is set the respons
        #
        # @param property [String] A specific property to include in the thread response.
        #
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
