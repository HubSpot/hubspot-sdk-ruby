# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Events::DefinitionsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.events.definitions.create(
        include_default_properties: true,
        label: "label",
        property_definitions: [{label: "label", type: "type"}]
      )

    assert_pattern do
      response => HubspotSDK::Events::ExternalBehavioralEventTypeDefinition
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::AssociationDefinition]),
        fully_qualified_name: String,
        labels: HubspotSDK::Events::BehavioralEventTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::Property]),
        combo_event_rules: HubspotSDK::Events::ComboEventRuleBranch | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        custom_matching_id: HubspotSDK::Events::ExternalObjectResolutionMappingResponse | nil,
        description: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType | nil,
        updated_at: Time | nil,
        updated_user_id: Integer | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @hubspot.events.definitions.update("eventName")

    assert_pattern do
      response => HubspotSDK::Events::ExternalBehavioralEventTypeDefinition
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::AssociationDefinition]),
        fully_qualified_name: String,
        labels: HubspotSDK::Events::BehavioralEventTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::Property]),
        combo_event_rules: HubspotSDK::Events::ComboEventRuleBranch | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        custom_matching_id: HubspotSDK::Events::ExternalObjectResolutionMappingResponse | nil,
        description: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType | nil,
        updated_at: Time | nil,
        updated_user_id: Integer | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.events.definitions.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Events::ExternalBehavioralEventTypeDefinition
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::AssociationDefinition]),
        fully_qualified_name: String,
        labels: HubspotSDK::Events::BehavioralEventTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::Property]),
        combo_event_rules: HubspotSDK::Events::ComboEventRuleBranch | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        custom_matching_id: HubspotSDK::Events::ExternalObjectResolutionMappingResponse | nil,
        description: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType | nil,
        updated_at: Time | nil,
        updated_user_id: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.events.definitions.delete("eventName")

    assert_pattern do
      response => nil
    end
  end

  def test_create_property_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.events.definitions.create_property("eventName", label: "label", type: "type")

    assert_pattern do
      response => HubspotSDK::Events::Property
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
        data_sensitivity: HubspotSDK::Events::Property::DataSensitivity | nil,
        date_display_hint: HubspotSDK::Events::Property::DateDisplayHint | nil,
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
    skip("Mock server tests are disabled")

    response = @hubspot.events.definitions.delete_property("propertyName", event_name: "eventName")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.events.definitions.get("eventName")

    assert_pattern do
      response => HubspotSDK::Events::ExternalBehavioralEventTypeDefinition
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::AssociationDefinition]),
        fully_qualified_name: String,
        labels: HubspotSDK::Events::BehavioralEventTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::Property]),
        combo_event_rules: HubspotSDK::Events::ComboEventRuleBranch | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        custom_matching_id: HubspotSDK::Events::ExternalObjectResolutionMappingResponse | nil,
        description: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType | nil,
        updated_at: Time | nil,
        updated_user_id: Integer | nil
      }
    end
  end

  def test_send_batch_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.events.definitions.send_batch(inputs: [{eventName: "eventName", properties: {foo: "string"}}])

    assert_pattern do
      response => nil
    end
  end

  def test_update_property_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.events.definitions.update_property("propertyName", event_name: "eventName")

    assert_pattern do
      response => HubspotSDK::Events::Property
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
        data_sensitivity: HubspotSDK::Events::Property::DataSensitivity | nil,
        date_display_hint: HubspotSDK::Events::Property::DateDisplayHint | nil,
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
