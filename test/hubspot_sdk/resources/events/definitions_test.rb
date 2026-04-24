# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Events::DefinitionsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.events.definitions.create(
        include_default_properties: true,
        label: "label",
        property_definitions: [{label: "label", type: "type"}]
      )

    assert_pattern do
      response => HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        associations: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::DefinitionsAssociationDefinition]),
        fully_qualified_name: String,
        labels: HubSpotSDK::Events::BehavioralEventTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseProperty]),
        combo_event_rules: HubSpotSDK::Events::ComboEventRuleBranch | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        custom_matching_id: HubSpotSDK::Events::ExternalObjectResolutionMappingResponse | nil,
        description: String | nil,
        detail_template: String | nil,
        header_template: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType | nil,
        updated_at: Time | nil,
        updated_user_id: Integer | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @hubspot.events.definitions.update("eventName")

    assert_pattern do
      response => HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        associations: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::DefinitionsAssociationDefinition]),
        fully_qualified_name: String,
        labels: HubSpotSDK::Events::BehavioralEventTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseProperty]),
        combo_event_rules: HubSpotSDK::Events::ComboEventRuleBranch | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        custom_matching_id: HubSpotSDK::Events::ExternalObjectResolutionMappingResponse | nil,
        description: String | nil,
        detail_template: String | nil,
        header_template: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType | nil,
        updated_at: Time | nil,
        updated_user_id: Integer | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.events.definitions.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        associations: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::DefinitionsAssociationDefinition]),
        fully_qualified_name: String,
        labels: HubSpotSDK::Events::BehavioralEventTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseProperty]),
        combo_event_rules: HubSpotSDK::Events::ComboEventRuleBranch | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        custom_matching_id: HubSpotSDK::Events::ExternalObjectResolutionMappingResponse | nil,
        description: String | nil,
        detail_template: String | nil,
        header_template: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType | nil,
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
      response => HubSpotSDK::BaseProperty
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseOption]),
        type: String,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubSpotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        currency_property_name: String | nil,
        data_sensitivity: HubSpotSDK::BaseProperty::DataSensitivity | nil,
        date_display_hint: HubSpotSDK::BaseProperty::DateDisplayHint | nil,
        display_order: Integer | nil,
        external_options: HubSpotSDK::Internal::Type::Boolean | nil,
        form_field: HubSpotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubSpotSDK::Internal::Type::Boolean | nil,
        hidden: HubSpotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubSpotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubSpotSDK::PropertyModificationMetadata | nil,
        number_display_hint: HubSpotSDK::BaseProperty::NumberDisplayHint | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubSpotSDK::Internal::Type::Boolean | nil,
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
      response => HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        associations: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::DefinitionsAssociationDefinition]),
        fully_qualified_name: String,
        labels: HubSpotSDK::Events::BehavioralEventTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseProperty]),
        combo_event_rules: HubSpotSDK::Events::ComboEventRuleBranch | nil,
        created_at: Time | nil,
        created_user_id: Integer | nil,
        custom_matching_id: HubSpotSDK::Events::ExternalObjectResolutionMappingResponse | nil,
        description: String | nil,
        detail_template: String | nil,
        header_template: String | nil,
        primary_object: String | nil,
        primary_object_id: String | nil,
        tracking_type: HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition::TrackingType | nil,
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
      response => HubSpotSDK::BaseProperty
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseOption]),
        type: String,
        archived: HubSpotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubSpotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        currency_property_name: String | nil,
        data_sensitivity: HubSpotSDK::BaseProperty::DataSensitivity | nil,
        date_display_hint: HubSpotSDK::BaseProperty::DateDisplayHint | nil,
        display_order: Integer | nil,
        external_options: HubSpotSDK::Internal::Type::Boolean | nil,
        form_field: HubSpotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubSpotSDK::Internal::Type::Boolean | nil,
        hidden: HubSpotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubSpotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubSpotSDK::PropertyModificationMetadata | nil,
        number_display_hint: HubSpotSDK::BaseProperty::NumberDisplayHint | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubSpotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end
end
