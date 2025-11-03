# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Associations::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.batch.create(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{from: {id: "53628"}, to: {id: "12726"}, type: "contact_to_company"}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponsePublicAssociation
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociation]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponsePublicAssociation::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.batch.delete(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{from: {id: "53628"}, to: {id: "12726"}, type: "contact_to_company"}]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.batch.get(
        "toObjectType",
        from_object_type: "fromObjectType",
        inputs: [{id: "id"}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponsePublicAssociationMulti
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicAssociationMulti]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponsePublicAssociationMulti::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
