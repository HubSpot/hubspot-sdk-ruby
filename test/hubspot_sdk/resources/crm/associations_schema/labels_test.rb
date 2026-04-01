# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::AssociationsSchema::LabelsTest < HubspotSDK::Test::ResourceTest
  def test_batch_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations_schema.labels.batch_create(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{category: :HUBSPOT_DEFINED, maxToObjectIds: 0, typeId: 0}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_label_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations_schema.labels.create_label(
        "toObjectType",
        from_object_type: "fromObjectType",
        label: "label",
        name: "name"
      )

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponseAssociationSpecWithLabelNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociationSpecWithLabel])
      }
    end
  end

  def test_delete_label_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations_schema.labels.delete_label(
        0,
        from_object_type: "fromObjectType",
        to_object_type: "toObjectType"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list_labels_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations_schema.labels.list_labels("toObjectType", from_object_type: "fromObjectType")

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponseAssociationSpecWithLabelNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociationSpecWithLabel])
      }
    end
  end

  def test_update_label_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations_schema.labels.update_label(
        "toObjectType",
        from_object_type: "fromObjectType",
        association_type_id: 0,
        label: "label"
      )

    assert_pattern do
      response => nil
    end
  end
end
