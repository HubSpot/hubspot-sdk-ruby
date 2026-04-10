# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::FeatureFlags::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.batch.delete("flagName", app_id: 0, portal_ids: [0])

    assert_pattern do
      response => HubSpotSDK::Crm::PortalFlagStateBatchResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PortalFlagStateResponse])
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
      response => HubSpotSDK::Crm::PortalFlagStateBatchResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PortalFlagStateResponse])
      }
    end
  end
end
