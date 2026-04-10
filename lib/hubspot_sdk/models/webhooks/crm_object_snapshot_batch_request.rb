# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotBatchRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute snapshot_requests
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotRequest>]
        required :snapshot_requests,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::CrmObjectSnapshotRequest] },
                 api_name: :snapshotRequests

        # @!method initialize(snapshot_requests:)
        #   @param snapshot_requests [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotRequest>]
      end
    end
  end
end
