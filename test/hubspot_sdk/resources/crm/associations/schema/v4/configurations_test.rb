# frozen_string_literal: true

require_relative "../../../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Associations::Schema::V4::ConfigurationsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.crm.associations.schema.v4.configurations.list

    assert_pattern do
      response => HubspotSDK::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration])
      }
    end
  end

  def test_batch_create_by_object_types_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.associations.schema.v4.configurations.batch_create_by_object_types(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{category: :HUBSPOT_DEFINED, maxToObjectIds: 0, typeId: 0}]
      )

    assert_pattern do
      response => HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration]),
        started_at: Time,
        status: HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_delete_by_object_types_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.associations.schema.v4.configurations.batch_delete_by_object_types(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{category: "category", typeId: 0}]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_batch_update_by_object_types_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.associations.schema.v4.configurations.batch_update_by_object_types(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{category: :HUBSPOT_DEFINED, maxToObjectIds: 0, typeId: 0}]
      )

    assert_pattern do
      response => HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult]),
        started_at: Time,
        status: HubspotSDK::CRM::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_by_object_types_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.associations.schema.v4.configurations.get_by_object_types(
        "toObjectType",
        from_object_type: "fromObjectType"
      )

    assert_pattern do
      response => HubspotSDK::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration])
      }
    end
  end
end
