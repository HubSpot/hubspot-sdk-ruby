# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::AssociationsSchema::LimitsTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.associations_schema.limits.list

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration])
      }
    end
  end

  def test_batch_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations_schema.limits.batch_delete(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{category: "category", typeId: 0}]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_batch_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations_schema.limits.batch_update(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{category: :HUBSPOT_DEFINED, maxToObjectIds: 0, typeId: 0}]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_by_object_types_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations_schema.limits.get_by_object_types(
        "toObjectType",
        from_object_type: "fromObjectType"
      )

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration])
      }
    end
  end
end
