# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::FeatureFlags::AppsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.apps.update("flagName", app_id: 0, default_state: :ABSENT)

    assert_pattern do
      response => HubspotSDK::Crm::FlagResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubspotSDK::Crm::FlagResponse::DefaultState,
        flag_name: String,
        override_state: HubspotSDK::Crm::FlagResponse::OverrideState | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.apps.delete("flagName", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Crm::FlagResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubspotSDK::Crm::FlagResponse::DefaultState,
        flag_name: String,
        override_state: HubspotSDK::Crm::FlagResponse::OverrideState | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.apps.get("flagName", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Crm::FlagResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubspotSDK::Crm::FlagResponse::DefaultState,
        flag_name: String,
        override_state: HubspotSDK::Crm::FlagResponse::OverrideState | nil
      }
    end
  end

  def test_list_portals_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.apps.list_portals("flagName", app_id: 0)

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
