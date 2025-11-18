# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Inboxes
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Conversations::InboxListParams} for more details.
        #
        # Retrieve a list of conversations inboxes, with optional filters and sorting.
        #
        # @overload list(after: nil, archived: nil, default_page_length: nil, limit: nil, sort: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to include archived inboxes in the response.
        #
        # @param default_page_length [Integer] The default number of results to display per page.
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param sort [Array<String>] Specify the sort order for the inboxes.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Conversations::PublicInbox>]
        #
        # @see HubspotSDK::Models::Conversations::InboxListParams
        def list(params = {})
          parsed, options = HubspotSDK::Conversations::InboxListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "conversations/v3/conversations/inboxes",
            query: parsed.transform_keys(default_page_length: "defaultPageLength"),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Conversations::PublicInbox,
            options: options
          )
        end

        # Retrieve details of a single conversations inbox using the inbox ID.
        #
        # @overload get(inbox_id, archived: nil, request_options: {})
        #
        # @param inbox_id [Integer] The unique ID of the inbox.
        #
        # @param archived [Boolean] Whether to include archived inboxes in the response.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicInbox]
        #
        # @see HubspotSDK::Models::Conversations::InboxGetParams
        def get(inbox_id, params = {})
          parsed, options = HubspotSDK::Conversations::InboxGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/inboxes/%1$s", inbox_id],
            query: parsed,
            model: HubspotSDK::Conversations::PublicInbox,
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
