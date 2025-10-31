# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::FeatureFlags::AppsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.apps.update("flagName", app_id: 0, default_state: :OFF)

    assert_pattern do
      response => HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse::DefaultState,
        flag_name: String,
        override_state: HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse::OverrideState | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.apps.delete("flagName", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Models::CRM::FeatureFlags::AppDeleteResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubspotSDK::Models::CRM::FeatureFlags::AppDeleteResponse::DefaultState,
        flag_name: String,
        override_state: HubspotSDK::Models::CRM::FeatureFlags::AppDeleteResponse::OverrideState | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.apps.get("flagName", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Models::CRM::FeatureFlags::AppGetResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubspotSDK::Models::CRM::FeatureFlags::AppGetResponse::DefaultState,
        flag_name: String,
        override_state: HubspotSDK::Models::CRM::FeatureFlags::AppGetResponse::OverrideState | nil
      }
    end
  end

  def test_list_portals_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.apps.list_portals("flagName", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse::PortalFlagState])
      }
    end
  end
end
