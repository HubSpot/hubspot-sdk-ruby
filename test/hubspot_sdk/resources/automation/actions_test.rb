# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Automation::ActionsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.create(
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
      response => HubspotSDK::Automation::PublicActionDefinition
    end

    assert_pattern do
      response => {
        id: String,
        action_url: String,
        functions: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicActionFunctionIdentifier]),
        input_fields: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicInputFieldDefinition]),
        labels: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Automation::PublicActionLabels]),
        object_types: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        published: HubspotSDK::Internal::Type::Boolean,
        revision_id: String,
        archived_at: Integer | nil,
        execution_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicExecutionTranslationRule]) | nil,
        input_field_dependencies: ^(HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::PublicActionDefinition::InputFieldDependency]) | nil,
        object_request_options: HubspotSDK::Automation::PublicObjectRequestOptions | nil,
        output_fields: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::OutputFieldDefinition]) | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.update("definitionId", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Automation::PublicActionDefinition
    end

    assert_pattern do
      response => {
        id: String,
        action_url: String,
        functions: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicActionFunctionIdentifier]),
        input_fields: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicInputFieldDefinition]),
        labels: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Automation::PublicActionLabels]),
        object_types: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        published: HubspotSDK::Internal::Type::Boolean,
        revision_id: String,
        archived_at: Integer | nil,
        execution_rules: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicExecutionTranslationRule]) | nil,
        input_field_dependencies: ^(HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::PublicActionDefinition::InputFieldDependency]) | nil,
        object_request_options: HubspotSDK::Automation::PublicObjectRequestOptions | nil,
        output_fields: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::OutputFieldDefinition]) | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.list("definitionId", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Automation::PublicActionRevision
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        definition: HubspotSDK::Automation::PublicActionDefinition,
        revision_id: String
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.delete(
        "functionId",
        app_id: 0,
        definition_id: "definitionId",
        function_type: :POST_ACTION_EXECUTION
      )

    assert_pattern do
      response => nil
    end
  end

  def test_complete_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.complete("callbackId", output_fields: {foo: "string"}, typed_outputs: {})

    assert_pattern do
      response => nil
    end
  end

  def test_complete_batch_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.complete_batch(
        inputs: [{callbackId: "callbackId", outputFields: {foo: "string"}, typedOutputs: {}}]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_create_or_replace_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.create_or_replace(
        "functionId",
        app_id: 0,
        definition_id: "definitionId",
        function_type: :POST_ACTION_EXECUTION,
        body: "body"
      )

    assert_pattern do
      response => HubspotSDK::Automation::PublicActionFunctionIdentifier
    end

    assert_pattern do
      response => {
        function_type: HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType,
        id: String | nil
      }
    end
  end

  def test_create_or_replace_by_function_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.create_or_replace_by_function_type(
        :POST_ACTION_EXECUTION,
        app_id: 0,
        definition_id: "definitionId",
        body: "body"
      )

    assert_pattern do
      response => HubspotSDK::Automation::PublicActionFunctionIdentifier
    end

    assert_pattern do
      response => {
        function_type: HubspotSDK::Automation::PublicActionFunctionIdentifier::FunctionType,
        id: String | nil
      }
    end
  end

  def test_create_requires_object_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.create_requires_object("definitionId", app_id: 0, requires_object: true)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_by_function_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.delete_by_function_type(
        :POST_ACTION_EXECUTION,
        app_id: 0,
        definition_id: "definitionId"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.get("revisionId", app_id: 0, definition_id: "definitionId")

    assert_pattern do
      response => HubspotSDK::Automation::PublicActionRevision
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        definition: HubspotSDK::Automation::PublicActionDefinition,
        revision_id: String
      }
    end
  end

  def test_get_by_function_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.get_by_function_type(
        :POST_ACTION_EXECUTION,
        app_id: 0,
        definition_id: "definitionId"
      )

    assert_pattern do
      response => HubspotSDK::Automation::PublicActionFunction
    end

    assert_pattern do
      response => {
        function_source: String,
        function_type: HubspotSDK::Automation::PublicActionFunction::FunctionType,
        id: String | nil
      }
    end
  end

  def test_get_requires_object_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.get_requires_object("definitionId", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Automation::PublicActionDefinitionRequiresObjectResponse
    end

    assert_pattern do
      response => {
        requires_object: HubspotSDK::Internal::Type::Boolean
      }
    end
  end
end
