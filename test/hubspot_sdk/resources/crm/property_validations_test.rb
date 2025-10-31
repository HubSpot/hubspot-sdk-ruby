# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::CRM::PropertyValidationsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.crm.property_validations.list("objectTypeId")

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponsePublicPropertyValidationRuleMapNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicPropertyValidationRuleMap])
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.property_validations.get("propertyName", object_type_id: "objectTypeId")

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponsePublicPropertyValidationRuleNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicPropertyValidationRule])
      }
    end
  end
end
