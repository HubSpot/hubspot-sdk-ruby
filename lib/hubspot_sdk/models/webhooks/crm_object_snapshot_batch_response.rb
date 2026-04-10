# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#create_crm_snapshot
      class CrmObjectSnapshotBatchResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute snapshot_responses
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotResponse>]
        required :snapshot_responses,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::CrmObjectSnapshotResponse] },
                 api_name: :snapshotResponses

        # @!method initialize(snapshot_responses:)
        #   @param snapshot_responses [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotResponse>]
      end
    end
  end
end
