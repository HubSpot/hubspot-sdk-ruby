# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotBatchRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute snapshot_requests
        #   An array of CrmObjectSnapshotRequest objects, each representing a request to
        #   capture a snapshot of a specific CRM object. This property is required.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotRequest>]
        required :snapshot_requests,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::CrmObjectSnapshotRequest] },
                 api_name: :snapshotRequests

        # @!method initialize(snapshot_requests:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::CrmObjectSnapshotBatchRequest} for more details.
        #
        #   @param snapshot_requests [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotRequest>] An array of CrmObjectSnapshotRequest objects, each representing a request to cap
      end
    end
  end
end
