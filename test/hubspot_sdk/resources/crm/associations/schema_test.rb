# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Associations::SchemaTest < HubspotSDK::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.associations.schema.list("toObjectType", from_object_type: "fromObjectType")

    assert_pattern do
      response => HubspotSDK::Crm::Associations::CollectionResponsePublicAssociationDefinitionNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::PublicAssociationDefinition])
      }
    end
  end
end
