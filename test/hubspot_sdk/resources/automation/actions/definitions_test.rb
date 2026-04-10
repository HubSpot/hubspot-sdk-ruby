# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Automation::Actions::DefinitionsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.definitions.create(
        0,
        action_url: "actionUrl",
        functions: [{functionSource: "functionSource", functionType: :POST_ACTION_EXECUTION}],
        input_fields: [
          {
            isRequired: true,
            typeDefinition: {name: "name", options: [{label: "label", value: "value"}], type: :bool}
          }
        ],
        labels: {foo: {actionName: "actionName"}},
        object_types: ["string"],
        published: true
      )

    assert_pattern do
      response => HubSpotSDK::Automation::PublicActionDefinition
    end

    assert_pattern do
      response => {
        id: String,
        action_url: String,
        functions: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionFunctionIdentifier]),
        input_fields: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicInputFieldDefinition]),
        labels: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Automation::PublicActionLabels]),
        object_types: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        published: HubSpotSDK::Internal::Type::Boolean,
        revision_id: String,
        archived_at: Integer | nil,
        execution_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicExecutionTranslationRule]) | nil,
        input_field_dependencies: ^(HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Automation::PublicActionDefinition::InputFieldDependency]) | nil,
        object_request_options: HubSpotSDK::Automation::PublicObjectRequestOptions | nil,
        output_fields: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::OutputFieldDefinition]) | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.definitions.update("definitionId", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Automation::PublicActionDefinition
    end

    assert_pattern do
      response => {
        id: String,
        action_url: String,
        functions: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionFunctionIdentifier]),
        input_fields: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicInputFieldDefinition]),
        labels: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Automation::PublicActionLabels]),
        object_types: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        published: HubSpotSDK::Internal::Type::Boolean,
        revision_id: String,
        archived_at: Integer | nil,
        execution_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicExecutionTranslationRule]) | nil,
        input_field_dependencies: ^(HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Automation::PublicActionDefinition::InputFieldDependency]) | nil,
        object_request_options: HubSpotSDK::Automation::PublicObjectRequestOptions | nil,
        output_fields: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::OutputFieldDefinition]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.definitions.list(0)

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Automation::PublicActionDefinition
    end

    assert_pattern do
      row => {
        id: String,
        action_url: String,
        functions: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionFunctionIdentifier]),
        input_fields: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicInputFieldDefinition]),
        labels: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Automation::PublicActionLabels]),
        object_types: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        published: HubSpotSDK::Internal::Type::Boolean,
        revision_id: String,
        archived_at: Integer | nil,
        execution_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicExecutionTranslationRule]) | nil,
        input_field_dependencies: ^(HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Automation::PublicActionDefinition::InputFieldDependency]) | nil,
        object_request_options: HubSpotSDK::Automation::PublicObjectRequestOptions | nil,
        output_fields: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::OutputFieldDefinition]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.definitions.delete("definitionId", app_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_create_requires_object_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.definitions.create_requires_object(
        "definitionId",
        app_id: 0,
        requires_object: true
      )

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.definitions.get("definitionId", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Automation::PublicActionDefinition
    end

    assert_pattern do
      response => {
        id: String,
        action_url: String,
        functions: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionFunctionIdentifier]),
        input_fields: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicInputFieldDefinition]),
        labels: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Automation::PublicActionLabels]),
        object_types: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        published: HubSpotSDK::Internal::Type::Boolean,
        revision_id: String,
        archived_at: Integer | nil,
        execution_rules: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicExecutionTranslationRule]) | nil,
        input_field_dependencies: ^(HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Automation::PublicActionDefinition::InputFieldDependency]) | nil,
        object_request_options: HubSpotSDK::Automation::PublicObjectRequestOptions | nil,
        output_fields: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::OutputFieldDefinition]) | nil
      }
    end
  end

  def test_get_requires_object_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.definitions.get_requires_object("definitionId", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Automation::PublicActionDefinitionRequiresObjectResponse
    end

    assert_pattern do
      response => {
        requires_object: HubSpotSDK::Internal::Type::Boolean
      }
    end
  end
end
