# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotBatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute snapshot_requests
        #
        #   @return [Array<HubspotSDK::Models::Webhooks::CrmObjectSnapshotRequest>]
        required :snapshot_requests,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::CrmObjectSnapshotRequest] },
                 api_name: :snapshotRequests

        # @!method initialize(snapshot_requests:)
        #   @param snapshot_requests [Array<HubspotSDK::Models::Webhooks::CrmObjectSnapshotRequest>]
      end
    end
  end
end
