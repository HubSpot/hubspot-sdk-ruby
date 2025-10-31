# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Inboxes
        # Retrieve a list of conversations inboxes, with optional filters and sorting.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::CollectionResponseWithTotalPublicInboxForwardPaging]
        #
        # @see HubspotSDK::Models::Conversations::InboxListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "conversations/v3/conversations/inboxes",
            model: HubspotSDK::Conversations::CollectionResponseWithTotalPublicInboxForwardPaging,
            options: params[:request_options]
          )
        end

        # Retrieve details of a single conversations inbox using the inbox ID.
        #
        # @overload get(inbox_id, request_options: {})
        #
        # @param inbox_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::PublicInbox]
        #
        # @see HubspotSDK::Models::Conversations::InboxGetParams
        def get(inbox_id, params = {})
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/inboxes/%1$s", inbox_id],
            model: HubspotSDK::Conversations::PublicInbox,
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
