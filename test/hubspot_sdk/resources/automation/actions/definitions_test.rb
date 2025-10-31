# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Automation::Actions::DefinitionsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.automation.actions.definitions.create(
        0,
        action_url: "actionUrl",
        functions: [{functionSource: "functionSource", functionType: :PRE_ACTION_EXECUTION}],
        input_fields: [
          {
            isRequired: true,
            typeDefinition: {
              externalOptions: true,
              name: "name",
              options: [
                {
                  description: "",
                  displayOrder: 0,
                  doubleData: 0,
                  hidden: false,
                  label: "",
                  readOnly: false,
                  value: ""
                }
              ],
              type: :string
            }
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
        input_fields: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::InputFieldDefinition]),
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
    skip("Prism tests are disabled")

    response = @hub_spot.automation.actions.definitions.update("definitionId", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Automation::PublicActionDefinition
    end

    assert_pattern do
      response => {
        id: String,
        action_url: String,
        functions: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicActionFunctionIdentifier]),
        input_fields: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::InputFieldDefinition]),
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

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.automation.actions.definitions.list(0)

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Automation::PublicActionDefinition
    end

    assert_pattern do
      row => {
        id: String,
        action_url: String,
        functions: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicActionFunctionIdentifier]),
        input_fields: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::InputFieldDefinition]),
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

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.automation.actions.definitions.delete("definitionId", app_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.automation.actions.definitions.get("definitionId", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Automation::PublicActionDefinition
    end

    assert_pattern do
      response => {
        id: String,
        action_url: String,
        functions: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicActionFunctionIdentifier]),
        input_fields: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::InputFieldDefinition]),
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
end
