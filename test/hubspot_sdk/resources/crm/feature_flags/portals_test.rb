# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::FeatureFlags::PortalsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.feature_flags.portals.update(0, app_id: 0, flag_name: "flagName", flag_state: :OFF)

    assert_pattern do
      response => HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        flag_name: String,
        flag_state: HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateResponse::FlagState,
        portal_id: Integer
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.portals.delete(0, app_id: 0, flag_name: "flagName")

    assert_pattern do
      response => HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        flag_name: String,
        flag_state: HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteResponse::FlagState,
        portal_id: Integer
      }
    end
  end

  def test_batch_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.portals.batch_delete("flagName", app_id: 0, portal_ids: [0])

    assert_pattern do
      response => HubspotSDK::Models::CRM::FeatureFlags::PortalBatchDeleteResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::FeatureFlags::PortalBatchDeleteResponse::PortalFlagState])
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
      response => HubspotSDK::Models::CRM::FeatureFlags::PortalBatchUpsertResponse
    end

    assert_pattern do
      response => {
        portal_flag_states: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::FeatureFlags::PortalBatchUpsertResponse::PortalFlagState])
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.feature_flags.portals.get(0, app_id: 0, flag_name: "flagName")

    assert_pattern do
      response => HubspotSDK::Models::CRM::FeatureFlags::PortalGetResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        flag_name: String,
        flag_state: HubspotSDK::Models::CRM::FeatureFlags::PortalGetResponse::FlagState,
        portal_id: Integer
      }
    end
  end
end
