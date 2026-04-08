# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks#create_crm_snapshot
      class CrmObjectSnapshotBatchResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute snapshot_responses
        #
        #   @return [Array<HubspotSDK::Models::Webhooks::CrmObjectSnapshotResponse>]
        required :snapshot_responses,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::CrmObjectSnapshotResponse] },
                 api_name: :snapshotResponses

        # @!method initialize(snapshot_responses:)
        #   @param snapshot_responses [Array<HubspotSDK::Models::Webhooks::CrmObjectSnapshotResponse>]
      end
    end
  end
end
