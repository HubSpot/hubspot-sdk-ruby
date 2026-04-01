# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Objects::PartnerClients::BatchTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.partner_clients.batch.update(inputs: [{id: "id", properties: {foo: "string"}}])

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObject]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponseSimplePublicObject::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_default_association_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.partner_clients.batch.create_default_association(
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

  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.partner_clients.batch.get(
        inputs: [{id: "430001"}],
        properties: ["string"],
        properties_with_history: ["string"]
      )

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObject]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponseSimplePublicObject::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
