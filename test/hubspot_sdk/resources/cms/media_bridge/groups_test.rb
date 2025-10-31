# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::MediaBridge::GroupsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.groups.create("objectType", app_id: "appId", label: "label", name: "name")

    assert_pattern do
      response => HubspotSDK::CRM::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        display_order: Integer,
        label: String,
        name: String
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.media_bridge.groups.list("objectType", app_id: "appId")

    assert_pattern do
      response => HubspotSDK::Cms::CollectionResponsePropertyGroupNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PropertyGroup])
      }
    end
  end

  def test_delete_by_name_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.groups.delete_by_name("groupName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get_by_name_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.groups.get_by_name("groupName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::CRM::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        display_order: Integer,
        label: String,
        name: String
      }
    end
  end

  def test_update_by_name_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.groups.update_by_name("groupName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::CRM::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        display_order: Integer,
        label: String,
        name: String
      }
    end
  end
end
