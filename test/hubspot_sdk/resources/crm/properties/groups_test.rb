# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Properties::GroupsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.properties.groups.create("objectType", label: "label", name: "name")

    assert_pattern do
      response => HubspotSDK::Crm::CreatedResponsePropertyGroup
    end

    assert_pattern do
      response => {
        created_resource_id: String,
        entity: HubspotSDK::Crm::PropertyGroup,
        location: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.properties.groups.update("groupName", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Crm::PropertyGroup
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

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.properties.groups.list("objectType")

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponsePropertyGroup
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PropertyGroup]),
        paging: HubspotSDK::Paging | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.properties.groups.delete("groupName", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.properties.groups.get("groupName", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Crm::PropertyGroup
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
