# frozen_string_literal: true

module HubSpotSDK
  module Models
    class CrmObjectSnapshotBatchResponse < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute snapshot_responses
      #   An array of CrmObjectSnapshotResponse objects, each representing the result of a
      #   snapshot operation for a specific CRM object. This property is required.
      #
      #   @return [Array<HubSpotSDK::Models::CrmObjectSnapshotResponse>]
      required :snapshot_responses,
               -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CrmObjectSnapshotResponse] },
               api_name: :snapshotResponses

      # @!method initialize(snapshot_responses:)
      #   Some parameter documentations has been truncated, see
      #   {HubSpotSDK::Models::CrmObjectSnapshotBatchResponse} for more details.
      #
      #   @param snapshot_responses [Array<HubSpotSDK::Models::CrmObjectSnapshotResponse>] An array of CrmObjectSnapshotResponse objects, each representing the result of a
    end
  end
end
