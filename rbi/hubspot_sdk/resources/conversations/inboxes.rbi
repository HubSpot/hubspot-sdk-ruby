# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Inboxes
        # Retrieve a list of conversations inboxes, with optional filters and sorting.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Conversations::CollectionResponseWithTotalPublicInboxForwardPaging
          )
        end
        def list(request_options: {})
        end

        # Retrieve details of a single conversations inbox using the inbox ID.
        sig do
          params(
            inbox_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicInbox)
        end
        def get(inbox_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
