# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::AssociationsTest < HubSpotSDK::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.list("toObjectType", object_type: "objectType", object_id_: "objectId")

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Crm::MultiAssociatedObjectWithLabel
    end

    assert_pattern do
      row => {
        association_types: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AssociationSpecWithLabel]),
        to_object_id: String
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.delete(
        "toObjectId",
        object_type: "objectType",
        object_id_: "objectId",
        to_object_type: "toObjectType"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_request_high_usage_report
    skip("Mock server tests are disabled")

    response = @hubspot.crm.associations.request_high_usage_report(0)

    assert_pattern do
      response => HubSpotSDK::Crm::ReportCreationResponse
    end

    assert_pattern do
      response => {
        enqueue_time: HubSpotSDK::Crm::DateTime,
        user_email: String,
        user_id: Integer
      }
    end
  end

  def test_search_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.search(
        "objectType",
        after: "after",
        filter_groups: [{filters: [{operator: :BETWEEN, propertyName: "propertyName"}]}],
        limit: 0,
        properties: ["string"],
        sorts: ["string"]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::CollectionResponseWithTotalSimplePublicObject
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObject]),
        total: Integer,
        paging: HubSpotSDK::Paging | nil
      }
    end
  end

  def test_update_association_labels_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.update_association_labels(
        "toObjectId",
        object_type: "objectType",
        object_id_: "objectId",
        to_object_type: "toObjectType",
        body: [{associationCategory: :HUBSPOT_DEFINED, associationTypeId: 0}]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::LabelsBetweenObjectPair
    end

    assert_pattern do
      response => {
        from_object_id: String,
        from_object_type_id: String,
        labels: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        to_object_id: String,
        to_object_type_id: String
      }
    end
  end
end
