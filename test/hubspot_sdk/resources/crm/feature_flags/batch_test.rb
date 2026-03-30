# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::FeatureFlags::BatchTest < HubspotSDK::Test::ResourceTest
  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.batch.delete("flagName", app_id: 0, portal_ids: [0])

    assert_pattern do
      response => HubspotSDK::Crm::PortalFlagStateBatchResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PortalFlagStateResponse])
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.feature_flags.batch.upsert(
        "flagName",
        app_id: 0,
        portal_states: [{flagState: :ABSENT, portalId: 0}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::PortalFlagStateBatchResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PortalFlagStateResponse])
      }
    end
  end
end
