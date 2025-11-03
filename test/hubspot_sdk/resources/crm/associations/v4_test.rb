# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Associations::V4Test < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.v4.create(
        "toObjectId",
        from_object_type: "fromObjectType",
        from_object_id: "fromObjectId",
        to_object_type: "toObjectType"
      )

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponsePublicDefaultAssociation
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicDefaultAssociation]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponsePublicDefaultAssociation::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Associations::StandardError1]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.v4.update(
        "toObjectId",
        object_type: "objectType",
        object_id_: "objectId",
        to_object_type: "toObjectType",
        body: [{associationCategory: :HUBSPOT_DEFINED, associationTypeId: 0}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::CreatedResponseLabelsBetweenObjectPair
    end

    assert_pattern do
      response => {
        created_resource_id: String,
        entity: HubspotSDK::Crm::LabelsBetweenObjectPair,
        location: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.v4.list("toObjectType", object_type: "objectType", object_id_: "objectId")

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Crm::MultiAssociatedObjectWithLabel
    end

    assert_pattern do
      row => {
        association_types: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociationSpecWithLabel]),
        to_object_id: String
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.v4.delete(
        "toObjectId",
        object_type: "objectType",
        object_id_: "objectId",
        to_object_type: "toObjectType"
      )

    assert_pattern do
      response => nil
    end
  end
end
