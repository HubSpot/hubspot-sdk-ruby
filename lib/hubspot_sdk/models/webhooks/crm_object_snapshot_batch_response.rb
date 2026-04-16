# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#create_crm_snapshots
      class CrmObjectSnapshotBatchResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute snapshot_responses
        #   An array of CrmObjectSnapshotResponse objects, each containing the details of a
        #   single CRM object snapshot request. This property is required.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotResponse>]
        required :snapshot_responses,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::CrmObjectSnapshotResponse] },
                 api_name: :snapshotResponses

        # @!method initialize(snapshot_responses:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::CrmObjectSnapshotBatchResponse} for more details.
        #
        #   @param snapshot_responses [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotResponse>] An array of CrmObjectSnapshotResponse objects, each containing the details of a
      end
    end
  end
end
