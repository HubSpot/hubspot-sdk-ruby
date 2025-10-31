# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::MediaBridge::IntegratorSettingsTest < HubspotSDK::Test::ResourceTest
  def test_create_object_definition_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.integrator_settings.create_object_definition("appId", media_types: [:VIDEO])

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse
    end

    assert_pattern do
      response => {
        created_objects: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse::CreatedObject])
      }
    end
  end

  def test_create_oembed_domain_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.integrator_settings.create_oembed_domain(
        "appId",
        endpoints: {discovery: true, schemes: ["string"], url: "url"}
      )

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateOembedDomainResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        app_id: Integer,
        created_at: Integer,
        deleted_at: Integer,
        endpoints: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateOembedDomainResponse::Endpoints,
        portal_id: Integer,
        updated_at: Integer
      }
    end
  end

  def test_delete_oembed_domain
    skip("Prism tests are disabled")

    response = @hubspot.cms.media_bridge.integrator_settings.delete_oembed_domain("appId")

    assert_pattern do
      response => nil
    end
  end

  def test_get_event_visibility_settings
    skip("Prism tests are disabled")

    response = @hubspot.cms.media_bridge.integrator_settings.get_event_visibility_settings("appId")

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetEventVisibilitySettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        visibility_settings: ^(HubspotSDK::Internal::Type::ArrayOf[
          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetEventVisibilitySettingsResponse::VisibilitySetting
        ])
      }
    end
  end

  def test_get_object_definitions_by_media_type_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.integrator_settings.get_object_definitions_by_media_type(
        "mediaType",
        app_id: "appId"
      )

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse
    end

    assert_pattern do
      response => {
        object_type_id: String,
        object_type_name: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Property]),
        property_groups: ^(HubspotSDK::Internal::Type::ArrayOf[
          HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::PropertyGroup
        ]),
        schema: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse::Schema | nil
      }
    end
  end

  def test_get_oembed_domain_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.integrator_settings.get_oembed_domain("oEmbedDomainId", app_id: "appId")

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetOembedDomainResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        app_id: Integer,
        created_at: Integer,
        deleted_at: Integer,
        endpoints: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetOembedDomainResponse::Endpoints,
        portal_id: Integer,
        updated_at: Integer
      }
    end
  end

  def test_list_oembed_domains
    skip("Prism tests are disabled")

    response = @hubspot.cms.media_bridge.integrator_settings.list_oembed_domains("appId")

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse::Result]),
        total_count: Integer | nil
      }
    end
  end

  def test_register_app_name_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.media_bridge.integrator_settings.register_app_name("appId", updated_at: 0)

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingRegisterAppNameResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        name: String
      }
    end
  end

  def test_update_app_name_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.media_bridge.integrator_settings.update_app_name("appId", updated_at: 0)

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateAppNameResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        name: String
      }
    end
  end

  def test_update_event_visibility_settings_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.integrator_settings.update_event_visibility_settings(
        "appId",
        event_type: :ALL,
        updated_at: 0
      )

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsResponse
    end

    assert_pattern do
      response => {
        event_type: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsResponse::EventType,
        updated_at: Integer,
        show_in_reporting: HubspotSDK::Internal::Type::Boolean | nil,
        show_in_timeline: HubspotSDK::Internal::Type::Boolean | nil,
        show_in_workflows: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update_oembed_domain_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.integrator_settings.update_oembed_domain(
        "oEmbedDomainId",
        app_id: "appId",
        endpoints: {discovery: true, schemes: ["string"], url: "url"}
      )

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        app_id: Integer,
        created_at: Integer,
        deleted_at: Integer,
        endpoints: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainResponse::Endpoints,
        portal_id: Integer,
        updated_at: Integer
      }
    end
  end
end
