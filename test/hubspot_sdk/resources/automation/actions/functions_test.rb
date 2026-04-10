# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Automation::Actions::FunctionsTest < HubSpotSDK::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.actions.functions.list("definitionId", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Automation::CollectionResponsePublicActionFunctionIdentifierNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionFunctionIdentifier])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.functions.delete(
        "functionId",
        app_id: 0,
        definition_id: "definitionId",
        function_type: :POST_ACTION_EXECUTION
      )

    assert_pattern do
      response => nil
    end
  end

  def test_create_or_replace_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.functions.create_or_replace(
        "functionId",
        app_id: 0,
        definition_id: "definitionId",
        function_type: :POST_ACTION_EXECUTION,
        body: "body"
      )

    assert_pattern do
      response => HubSpotSDK::Automation::PublicActionFunctionIdentifier
    end

    assert_pattern do
      response => {
        function_type: HubSpotSDK::Automation::PublicActionFunctionIdentifier::FunctionType,
        id: String | nil
      }
    end
  end

  def test_create_or_replace_by_function_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.functions.create_or_replace_by_function_type(
        :POST_ACTION_EXECUTION,
        app_id: 0,
        definition_id: "definitionId",
        body: "body"
      )

    assert_pattern do
      response => HubSpotSDK::Automation::PublicActionFunctionIdentifier
    end

    assert_pattern do
      response => {
        function_type: HubSpotSDK::Automation::PublicActionFunctionIdentifier::FunctionType,
        id: String | nil
      }
    end
  end

  def test_delete_by_function_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.functions.delete_by_function_type(
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

    response =
      @hubspot.automation.actions.functions.get(
        "functionId",
        app_id: 0,
        definition_id: "definitionId",
        function_type: :POST_ACTION_EXECUTION
      )

    assert_pattern do
      response => HubSpotSDK::Automation::PublicActionFunction
    end

    assert_pattern do
      response => {
        function_source: String,
        function_type: HubSpotSDK::Automation::PublicActionFunction::FunctionType,
        id: String | nil
      }
    end
  end

  def test_get_by_function_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.actions.functions.get_by_function_type(
        :POST_ACTION_EXECUTION,
        app_id: 0,
        definition_id: "definitionId"
      )

    assert_pattern do
      response => HubSpotSDK::Automation::PublicActionFunction
    end

    assert_pattern do
      response => {
        function_source: String,
        function_type: HubSpotSDK::Automation::PublicActionFunction::FunctionType,
        id: String | nil
      }
    end
  end
end
