# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Associations::SchemaTest < HubspotSDK::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.associations.schema.list("toObjectType", from_object_type: "fromObjectType")

    assert_pattern do
      response => HubspotSDK::CRM::Associations::CollectionResponsePublicAssociationDefinitionNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::PublicAssociationDefinition])
      }
    end
  end
end
