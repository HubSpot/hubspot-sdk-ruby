# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Events::EventDefinitionsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.events.event_definitions.create(
        label: "label",
        property_definitions: [{label: "label", type: "type"}]
      )

    assert_pattern do
      response => HubspotSDK::Models::Events::EventDefinitionCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Events::EventDefinitionCreateResponse::Association]),
        fully_qualified_name: String,
        labels: HubspotSDK::Models::Events::EventDefinitionCreateResponse::Labels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        combo_event_rules: HubspotSDK::Models::Events::EventDefinitionCreateResponse::ComboEventRules | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        description: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubspotSDK::Models::Events::EventDefinitionCreateResponse::TrackingType | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @hubspot.events.event_definitions.update("eventName")

    assert_pattern do
      response => HubspotSDK::Models::Events::EventDefinitionUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Events::EventDefinitionUpdateResponse::Association]),
        fully_qualified_name: String,
        labels: HubspotSDK::Models::Events::EventDefinitionUpdateResponse::Labels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        combo_event_rules: HubspotSDK::Models::Events::EventDefinitionUpdateResponse::ComboEventRules | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        description: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubspotSDK::Models::Events::EventDefinitionUpdateResponse::TrackingType | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.events.event_definitions.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Models::Events::EventDefinitionListResponse
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Events::EventDefinitionListResponse::Association]),
        fully_qualified_name: String,
        labels: HubspotSDK::Models::Events::EventDefinitionListResponse::Labels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        combo_event_rules: HubspotSDK::Models::Events::EventDefinitionListResponse::ComboEventRules | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        description: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubspotSDK::Models::Events::EventDefinitionListResponse::TrackingType | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.events.event_definitions.delete("eventName")

    assert_pattern do
      response => nil
    end
  end

  def test_create_property_required_params
    skip("Prism tests are disabled")

    response = @hubspot.events.event_definitions.create_property("eventName", label: "label", type: "type")

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

  def test_delete_property_required_params
    skip("Prism tests are disabled")

    response = @hubspot.events.event_definitions.delete_property("propertyName", event_name: "eventName")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.events.event_definitions.get("eventName")

    assert_pattern do
      response => HubspotSDK::Models::Events::EventDefinitionGetResponse
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Events::EventDefinitionGetResponse::Association]),
        fully_qualified_name: String,
        labels: HubspotSDK::Models::Events::EventDefinitionGetResponse::Labels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        combo_event_rules: HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        description: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubspotSDK::Models::Events::EventDefinitionGetResponse::TrackingType | nil
      }
    end
  end

  def test_update_property_required_params
    skip("Prism tests are disabled")

    response = @hubspot.events.event_definitions.update_property("propertyName", event_name: "eventName")

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
