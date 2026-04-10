# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Properties::GroupsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.groups.create("objectType", label: "label", name: "name")

    assert_pattern do
      response => HubSpotSDK::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        display_order: Integer | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.groups.update("groupName", object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        display_order: Integer | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.groups.list("objectType")

    assert_pattern do
      response => HubSpotSDK::CollectionResponsePropertyGroupNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyGroup])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.groups.delete("groupName", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.groups.get("groupName", object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        display_order: Integer | nil
      }
    end
  end
end
