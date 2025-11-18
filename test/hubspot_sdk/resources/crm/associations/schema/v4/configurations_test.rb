# frozen_string_literal: true

require_relative "../../../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Associations::Schema::V4::ConfigurationsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.associations.schema.v4.configurations.list

    assert_pattern do
      response => HubspotSDK::Crm::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfiguration
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionUserConfiguration]),
        paging: HubspotSDK::Paging | nil
      }
    end
  end

  def test_batch_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.schema.v4.configurations.batch_create(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{category: :HUBSPOT_DEFINED, maxToObjectIds: 0, typeId: 0}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionUserConfiguration]),
        started_at: Time,
        status: HubspotSDK::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionUserConfiguration::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_delete_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.schema.v4.configurations.batch_delete(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{category: "category", typeId: 0}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponseVoid
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponseVoid::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.schema.v4.configurations.batch_update(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{category: :HUBSPOT_DEFINED, maxToObjectIds: 0, typeId: 0}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult]),
        started_at: Time,
        status: HubspotSDK::Crm::Associations::Schema::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_by_object_types_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.schema.v4.configurations.get_by_object_types(
        "toObjectType",
        from_object_type: "fromObjectType"
      )

    assert_pattern do
      response => HubspotSDK::Crm::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfiguration
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionUserConfiguration]),
        paging: HubspotSDK::Paging | nil
      }
    end
  end
end
