# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::MediaBridge::PropertiesTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.properties.create(
        "objectType",
        app_id: "appId",
        field_type: :booleancheckbox,
        group_name: "groupName",
        label: "label",
        name: "name",
        type: :bool
      )

    assert_pattern do
      response => HubspotSDK::Property
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Option]),
        type: String,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubspotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        data_sensitivity: HubspotSDK::Property::DataSensitivity | nil,
        display_order: Integer | nil,
        external_options: HubspotSDK::Internal::Type::Boolean | nil,
        form_field: HubspotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubspotSDK::Internal::Type::Boolean | nil,
        hidden: HubspotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubspotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubspotSDK::PropertyModificationMetadata | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubspotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.properties.update("propertyName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Property
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Option]),
        type: String,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubspotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        data_sensitivity: HubspotSDK::Property::DataSensitivity | nil,
        display_order: Integer | nil,
        external_options: HubspotSDK::Internal::Type::Boolean | nil,
        form_field: HubspotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubspotSDK::Internal::Type::Boolean | nil,
        hidden: HubspotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubspotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubspotSDK::PropertyModificationMetadata | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubspotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.cms.media_bridge.properties.list("objectType", app_id: "appId")

    assert_pattern do
      response => HubspotSDK::Cms::CollectionResponsePropertyNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Property1])
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.properties.delete("propertyName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_archive_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.properties.archive_batch(
        "objectType",
        app_id: "appId",
        inputs: [{name: "name"}]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_create_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.properties.create_batch(
        "objectType",
        app_id: "appId",
        inputs: [
          {
            fieldType: :booleancheckbox,
            groupName: "groupName",
            label: "label",
            name: "name",
            type: :bool
          }
        ]
      )

    assert_pattern do
      response => HubspotSDK::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        started_at: Time,
        status: HubspotSDK::BatchResponseProperty::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.properties.get("propertyName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Property
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Option]),
        type: String,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubspotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        data_sensitivity: HubspotSDK::Property::DataSensitivity | nil,
        display_order: Integer | nil,
        external_options: HubspotSDK::Internal::Type::Boolean | nil,
        form_field: HubspotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubspotSDK::Internal::Type::Boolean | nil,
        hidden: HubspotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubspotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubspotSDK::PropertyModificationMetadata | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubspotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end

  def test_get_batch_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.cms.media_bridge.properties.get_batch(
        "objectType",
        app_id: "appId",
        archived: true,
        inputs: [{name: "name"}]
      )

    assert_pattern do
      response => HubspotSDK::BatchResponseProperty
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        started_at: Time,
        status: HubspotSDK::BatchResponseProperty::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
