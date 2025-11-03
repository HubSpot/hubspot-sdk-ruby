# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::PropertyValidationsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.property_validations.list("objectTypeId")

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicPropertyValidationRuleMap])
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.property_validations.get("propertyName", object_type_id: "objectTypeId")

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicPropertyValidationRule])
      }
    end
  end
end
