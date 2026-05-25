# typed: strong

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class JournalLocal
        sig do
          returns(HubSpotSDK::Resources::WebhooksJournal::JournalLocal::Batch)
        end
        attr_reader :batch

        # Retrieve the earliest webhook journal entries for the specified portal. This
        # endpoint can be used to access the oldest records available in the webhook
        # journal, which may be useful for auditing or historical analysis.
        sig do
          params(
            install_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_earliest(
          # The ID of the portal for which to retrieve the earliest webhook journal entries.
          # This parameter is optional and should be an integer.
          install_portal_id: nil,
          request_options: {}
        )
        end

        # Retrieve the latest entries from the webhooks journal for the specified portal.
        # This endpoint is useful for accessing the most recent webhook events and their
        # statuses, allowing you to monitor and debug webhook activity effectively.
        sig do
          params(
            install_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_latest(
          # The unique identifier of the portal installation for which to retrieve the
          # latest journal entries. This parameter is optional and should be an integer.
          install_portal_id: nil,
          request_options: {}
        )
        end

        # Retrieve the next set of webhook journal entries starting from a specified
        # offset. This endpoint is useful for paginating through large sets of webhook
        # data, allowing you to continue from where a previous request left off.
        sig do
          params(
            offset: String,
            install_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_next_from_offset(
          # The starting point for retrieving the next set of webhook journal entries. This
          # is a string value that represents the current position in the journal.
          offset,
          # The ID of the portal installation to filter the webhook journal entries. This is
          # an integer value.
          install_portal_id: nil,
          request_options: {}
        )
        end

        # Retrieve the status of a specific webhook journal entry using its unique status
        # ID. This endpoint is useful for monitoring the progress or outcome of webhook
        # journal entries, allowing you to check if an entry is pending, in progress,
        # completed, failed, or expired.
        sig do
          params(
            status_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::SnapshotStatusResponse)
        end
        def get_status(
          # The unique identifier of the status to retrieve. It should be in UUID format.
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
