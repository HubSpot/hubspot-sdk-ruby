# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::FeatureFlags::AppsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.feature_flags.apps.update("flagName", app_id: 0, default_state: :OFF)

    assert_pattern do
      response => HubspotSDK::CRM::FlagResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubspotSDK::CRM::FlagResponse::DefaultState,
        flag_name: String,
        override_state: HubspotSDK::CRM::FlagResponse::OverrideState | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.feature_flags.apps.delete("flagName", app_id: 0)

    assert_pattern do
      response => HubspotSDK::CRM::FlagResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubspotSDK::CRM::FlagResponse::DefaultState,
        flag_name: String,
        override_state: HubspotSDK::CRM::FlagResponse::OverrideState | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.feature_flags.apps.get("flagName", app_id: 0)

    assert_pattern do
      response => HubspotSDK::CRM::FlagResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubspotSDK::CRM::FlagResponse::DefaultState,
        flag_name: String,
        override_state: HubspotSDK::CRM::FlagResponse::OverrideState | nil
      }
    end
  end

  def test_list_portals_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.feature_flags.apps.list_portals("flagName", app_id: 0)

    assert_pattern do
      response => HubspotSDK::CRM::PortalFlagStateBatchResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PortalFlagStateResponse])
      }
    end
  end
end
