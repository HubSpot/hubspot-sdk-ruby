# typed: strong

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Snapshots
        # Create a batch of CRM object snapshots in HubSpot. This endpoint is used to
        # capture the current state of specified CRM objects for later reference or
        # analysis. It requires a JSON payload containing the details of the CRM objects
        # to snapshot. This operation is exempt from daily and ten-secondly rate limits.
        sig do
          params(
            snapshot_requests:
              T::Array[HubSpotSDK::CrmObjectSnapshotRequest::OrHash],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::CrmObjectSnapshotBatchResponse)
        end
        def create(
          # An array of CrmObjectSnapshotRequest objects, each representing a request to
          # create a snapshot for a specific CRM object. This property is required.
          snapshot_requests:,
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
