# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Threads
        # Updates a single thread. Either a thread's status can be updated, or the thread
        # can be restored.
        #
        # @overload update(thread_id, archived: nil, status: nil, request_options: {})
        #
        # @param thread_id [String]
        #
        # @param archived [Boolean] Whether this thread is archived. Set to false to restore the thread.
        #
        # @param status [Symbol, HubspotSDK::Models::Conversations::PublicThreadUpdateRequest::Status] The thread's status: `OPEN` or `CLOSED`.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicThread]
        #
        # @see HubspotSDK::Models::Conversations::ThreadUpdateParams
        def update(thread_id, params = {})
          parsed, options = HubspotSDK::Conversations::ThreadUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["conversations/v3/conversations/threads/%1$s", thread_id],
            body: parsed,
            model: HubspotSDK::Conversations::PublicThread,
            options: options
          )
        end

        # Retrieve a list of threads, with optional filters and sorting.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::CollectionResponsePublicThreadForwardPaging]
        #
        # @see HubspotSDK::Models::Conversations::ThreadListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "conversations/v3/conversations/threads",
            model: HubspotSDK::Conversations::CollectionResponsePublicThreadForwardPaging,
            options: params[:request_options]
          )
        end

        # Archives a single thread. The thread will be permanently deleted 30 days after
        # placed in an archived state.
        #
        # @overload delete(thread_id, request_options: {})
        #
        # @param thread_id [String]
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

        # Retrieve a single thread by its ID
        #
        # @overload get(thread_id, request_options: {})
        #
        # @param thread_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicThread]
        #
        # @see HubspotSDK::Models::Conversations::ThreadGetParams
        def get(thread_id, params = {})
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/threads/%1$s", thread_id],
            model: HubspotSDK::Conversations::PublicThread,
            options: params[:request_options]
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
