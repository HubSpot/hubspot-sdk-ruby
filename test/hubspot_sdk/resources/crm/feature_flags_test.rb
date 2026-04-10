# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::FeatureFlagsTest < HubSpotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.update("flagName", app_id: 0, default_state: :ABSENT)

    assert_pattern do
      response => HubSpotSDK::Crm::FlagResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubSpotSDK::Crm::FlagResponse::DefaultState,
        flag_name: String,
        override_state: HubSpotSDK::Crm::FlagResponse::OverrideState | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.delete("flagName", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Crm::FlagResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubSpotSDK::Crm::FlagResponse::DefaultState,
        flag_name: String,
        override_state: HubSpotSDK::Crm::FlagResponse::OverrideState | nil
      }
    end
  end

  def test_delete_portal_state_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.delete_portal_state(0, app_id: 0, flag_name: "flagName")

    assert_pattern do
      response => HubSpotSDK::Crm::PortalFlagStateResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        flag_name: String,
        flag_state: HubSpotSDK::Crm::PortalFlagStateResponse::FlagState,
        portal_id: Integer
      }
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.get("flagName", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Crm::FlagResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        default_state: HubSpotSDK::Crm::FlagResponse::DefaultState,
        flag_name: String,
        override_state: HubSpotSDK::Crm::FlagResponse::OverrideState | nil
      }
    end
  end

  def test_get_portal_state_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.get_portal_state(0, app_id: 0, flag_name: "flagName")

    assert_pattern do
      response => HubSpotSDK::Crm::PortalFlagStateResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        flag_name: String,
        flag_state: HubSpotSDK::Crm::PortalFlagStateResponse::FlagState,
        portal_id: Integer
      }
    end
  end

  def test_list_all
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.list_all(0)

    assert_pattern do
      response => HubSpotSDK::Crm::FlagsForAppResponse
    end

    assert_pattern do
      response => {
        flags_for_app: ^(HubSpotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_list_portals_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.list_portals("flagName", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Crm::PortalFlagStateBatchResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PortalFlagStateResponse])
      }
    end
  end

  def test_update_portal_state_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.feature_flags.update_portal_state(0, app_id: 0, flag_name: "flagName", flag_state: :ABSENT)

    assert_pattern do
      response => HubSpotSDK::Crm::PortalFlagStateResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        flag_name: String,
        flag_state: HubSpotSDK::Crm::PortalFlagStateResponse::FlagState,
        portal_id: Integer
      }
    end
  end
end
