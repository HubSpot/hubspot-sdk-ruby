# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Associations::V4Test < HubspotSDK::Test::ResourceTest
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
      response => HubspotSDK::CRM::BatchResponsePublicDefaultAssociation
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicDefaultAssociation]),
        started_at: Time,
        status: HubspotSDK::CRM::BatchResponsePublicDefaultAssociation::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
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
      response => HubspotSDK::CRM::CreatedResponseLabelsBetweenObjectPair
    end

    assert_pattern do
      response => {
        created_resource_id: String,
        entity: HubspotSDK::CRM::LabelsBetweenObjectPair,
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
      row => HubspotSDK::CRM::MultiAssociatedObjectWithLabel
    end

    assert_pattern do
      row => {
        association_types: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::AssociationSpecWithLabel]),
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
