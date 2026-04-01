# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Associations::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.batch.create(
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
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.batch.delete(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{from: {id: "id"}, to: [{id: "id"}]}]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_create_default_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.batch.create_default(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{from: {id: "id"}, to: {id: "id"}}]
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
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_labels_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.batch.delete_labels(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [
          {
            from: {id: "id"},
            to: {id: "id"},
            types: [{associationCategory: :HUBSPOT_DEFINED, associationTypeId: 0}]
          }
        ]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.batch.get(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{id: "id"}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponsePublicAssociationMultiWithLabel
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationMultiWithLabel]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponsePublicAssociationMultiWithLabel::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
