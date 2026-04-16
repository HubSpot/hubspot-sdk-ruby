# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::PropertiesTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.properties.create(
        "objectType",
        field_type: :booleancheckbox,
        group_name: "groupName",
        label: "label",
        name: "name",
        type: :bool
      )

    assert_pattern do
      response => HubSpotSDK::Property
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Option]),
        type: String,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubSpotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        currency_property_name: String | nil,
        data_sensitivity: HubSpotSDK::Property::DataSensitivity | nil,
        date_display_hint: HubSpotSDK::Property::DateDisplayHint | nil,
        display_order: Integer | nil,
        external_options: HubSpotSDK::Internal::Type::Boolean | nil,
        form_field: HubSpotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubSpotSDK::Internal::Type::Boolean | nil,
        hidden: HubSpotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubSpotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubSpotSDK::PropertyModificationMetadata | nil,
        number_display_hint: HubSpotSDK::Property::NumberDisplayHint | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.update("propertyName", object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::Property
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Option]),
        type: String,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubSpotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        currency_property_name: String | nil,
        data_sensitivity: HubSpotSDK::Property::DataSensitivity | nil,
        date_display_hint: HubSpotSDK::Property::DateDisplayHint | nil,
        display_order: Integer | nil,
        external_options: HubSpotSDK::Internal::Type::Boolean | nil,
        form_field: HubSpotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubSpotSDK::Internal::Type::Boolean | nil,
        hidden: HubSpotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubSpotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubSpotSDK::PropertyModificationMetadata | nil,
        number_display_hint: HubSpotSDK::Property::NumberDisplayHint | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.list("objectType")

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponsePropertyNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Property])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.delete("propertyName", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties.get("propertyName", object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::Property
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Option]),
        type: String,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubSpotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        currency_property_name: String | nil,
        data_sensitivity: HubSpotSDK::Property::DataSensitivity | nil,
        date_display_hint: HubSpotSDK::Property::DateDisplayHint | nil,
        display_order: Integer | nil,
        external_options: HubSpotSDK::Internal::Type::Boolean | nil,
        form_field: HubSpotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubSpotSDK::Internal::Type::Boolean | nil,
        hidden: HubSpotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubSpotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubSpotSDK::PropertyModificationMetadata | nil,
        number_display_hint: HubSpotSDK::Property::NumberDisplayHint | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end
end
