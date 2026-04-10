# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::PropertiesValidationsTest < HubSpotSDK::Test::ResourceTest
  def test_get_by_object_type_id
    skip("Mock server tests are disabled")

    response = @hubspot.crm.properties_validations.get_by_object_type_id("objectTypeId")

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicPropertyValidationRuleMap])
      }
    end
  end

  def test_get_by_object_type_id_and_property_name_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.properties_validations.get_by_object_type_id_and_property_name(
        "propertyName",
        object_type_id: "objectTypeId"
      )

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicPropertyValidationRule])
      }
    end
  end

  def test_get_by_object_type_id_property_name_and_rule_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.properties_validations.get_by_object_type_id_property_name_and_rule_type(
        :AFTER_DATETIME_DURATION,
        object_type_id: "objectTypeId",
        property_name: "propertyName"
      )

    assert_pattern do
      response => HubSpotSDK::Crm::PublicPropertyValidationRule
    end

    assert_pattern do
      response => {
        rule_arguments: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        rule_type: HubSpotSDK::Crm::PublicPropertyValidationRule::RuleType,
        should_apply_normalization: HubSpotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update_by_object_type_id_property_name_and_rule_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.properties_validations.update_by_object_type_id_property_name_and_rule_type(
        :AFTER_DATETIME_DURATION,
        object_type_id: "objectTypeId",
        property_name: "propertyName",
        rule_arguments: ["string"]
      )

    assert_pattern do
      response => nil
    end
  end
end
