# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::FeatureFlags::PortalsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.feature_flags.portals.update(0, app_id: 0, flag_name: "flagName", flag_state: :OFF)

    assert_pattern do
      response => HubspotSDK::Crm::PortalFlagStateResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        flag_name: String,
        flag_state: HubspotSDK::Crm::PortalFlagStateResponse::FlagState,
        portal_id: Integer
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.portals.delete(0, app_id: 0, flag_name: "flagName")

    assert_pattern do
      response => HubspotSDK::Crm::PortalFlagStateResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        flag_name: String,
        flag_state: HubspotSDK::Crm::PortalFlagStateResponse::FlagState,
        portal_id: Integer
      }
    end
  end

  def test_batch_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.portals.batch_delete("flagName", app_id: 0, portal_ids: [0])

    assert_pattern do
      response => HubspotSDK::Crm::PortalFlagStateBatchResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PortalFlagStateResponse])
      }
    end
  end

  def test_batch_upsert_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.feature_flags.portals.batch_upsert(
        "flagName",
        app_id: 0,
        portal_states: [{flagState: :OFF, portalId: 0}]
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

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.portals.get(0, app_id: 0, flag_name: "flagName")

    assert_pattern do
      response => HubspotSDK::Crm::PortalFlagStateResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        flag_name: String,
        flag_state: HubspotSDK::Crm::PortalFlagStateResponse::FlagState,
        portal_id: Integer
      }
    end
  end
end
