# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::CRM::PropertiesTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.properties.create(
        "objectType",
        field_type: :booleancheckbox,
        group_name: "groupName",
        label: "label",
        name: "name",
        type: :bool
      )

    assert_pattern do
      response => HubspotSDK::CRM::CreatedResponseProperty
    end

    assert_pattern do
      response => {
        created_resource_id: String,
        entity: HubspotSDK::Property,
        location: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.properties.update("propertyName", object_type: "objectType")

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

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.crm.properties.list("objectType")

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponseProperty
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        paging: HubspotSDK::Marketing::Paging | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.properties.delete("propertyName", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.properties.get("propertyName", object_type: "objectType")

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
end
