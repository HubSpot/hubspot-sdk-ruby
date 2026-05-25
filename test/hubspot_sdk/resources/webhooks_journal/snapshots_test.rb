# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::WebhooksJournal::SnapshotsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks_journal.snapshots.create(
        snapshot_requests: [{objectId: 0, objectTypeId: "objectTypeId", portalId: 0, properties: ["string"]}]
      )

    assert_pattern do
      response => HubSpotSDK::CrmObjectSnapshotBatchResponse
    end

    assert_pattern do
      response => {
        snapshot_responses: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CrmObjectSnapshotResponse])
      }
    end
  end
end
