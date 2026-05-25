# frozen_string_literal: true

module HubSpotSDK
  module Models
    class CrmObjectSnapshotBatchRequest < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute snapshot_requests
      #   An array of CrmObjectSnapshotRequest objects, each representing a request to
      #   create a snapshot for a specific CRM object. This property is required.
      #
      #   @return [Array<HubSpotSDK::Models::CrmObjectSnapshotRequest>]
      required :snapshot_requests,
               -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CrmObjectSnapshotRequest] },
               api_name: :snapshotRequests

      # @!method initialize(snapshot_requests:)
      #   Some parameter documentations has been truncated, see
      #   {HubSpotSDK::Models::CrmObjectSnapshotBatchRequest} for more details.
      #
      #   @param snapshot_requests [Array<HubSpotSDK::Models::CrmObjectSnapshotRequest>] An array of CrmObjectSnapshotRequest objects, each representing a request to cre
    end
  end
end
