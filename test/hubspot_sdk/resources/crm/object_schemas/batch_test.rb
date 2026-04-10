# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::ObjectSchemas::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.object_schemas.batch.get(
        include_association_definitions: true,
        include_audit_metadata: true,
        include_property_definitions: true,
        inputs: ["string"]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponseObjectSchemaNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ObjectSchema])
      }
    end
  end
end
