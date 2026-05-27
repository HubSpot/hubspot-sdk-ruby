# typed: strong

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Journal
        sig { returns(HubSpotSDK::Resources::WebhooksJournal::Journal::Batch) }
        attr_reader :batch

        # Retrieve the earliest entry from the webhooks journal for the specified portal.
        # This endpoint is useful for accessing the first recorded webhook event in the
        # journal, which can be helpful for auditing or debugging purposes.
        sig do
          params(
            install_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_earliest(
          # The ID of the portal installation to filter the journal entries by. This is an
          # integer value.
          install_portal_id: nil,
          request_options: {}
        )
        end

        # Retrieve the next set of entries from the webhooks journal starting from a
        # specified offset. This endpoint is useful for paginating through journal entries
        # to process or analyze webhook events sequentially.
        sig do
          params(
            offset: String,
            install_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_next_from_offset(
          # The offset string indicating the starting point for retrieving the next set of
          # journal entries.
          offset,
          # The ID of the portal where the webhooks are installed. This is an integer value.
          install_portal_id: nil,
          request_options: {}
        )
        end

        # Retrieve the status of a specific webhook journal entry using its unique status
        # ID. This endpoint provides detailed information about the status, including
        # whether it is pending, in progress, completed, failed, or expired. It is useful
        # for monitoring and managing the state of webhook journal entries.
        sig do
          params(
            status_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::SnapshotStatusResponse)
        end
        def get_status(
          # The unique identifier (UUID) of the status to retrieve.
          status_id,
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
