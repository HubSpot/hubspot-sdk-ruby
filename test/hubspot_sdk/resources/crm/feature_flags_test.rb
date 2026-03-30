# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::FeatureFlagsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.update(0, app_id: 0, flag_name: "flagName", flag_state: :ABSENT)

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
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.delete(0, app_id: 0, flag_name: "flagName")

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

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.get(0, app_id: 0, flag_name: "flagName")

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

  def test_list_all
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.list_all(0)

    assert_pattern do
      response => HubspotSDK::Crm::FlagsForAppResponse
    end

    assert_pattern do
      response => {
        flags_for_app: ^(HubspotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_list_portals_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.feature_flags.list_portals("flagName", app_id: 0)

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
