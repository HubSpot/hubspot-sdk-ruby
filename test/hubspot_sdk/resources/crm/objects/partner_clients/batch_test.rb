# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Objects::PartnerClients::BatchTest < HubspotSDK::Test::ResourceTest
  def test_batch_get_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.partner_clients.batch.batch_get(
        inputs: [{id: "id"}],
        properties: ["string"],
        properties_with_history: ["string"]
      )

    assert_pattern do
      response => HubspotSDK::CRM::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObject]),
        started_at: Time,
        status: HubspotSDK::CRM::BatchResponseSimplePublicObject::Status,
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
      @hubspot.crm.objects.partner_clients.batch.batch_update(
        inputs: [
          {
            id: "id",
            properties: {foo: "string"}
          }
        ]
      )

    assert_pattern do
      response => HubspotSDK::CRM::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObject]),
        started_at: Time,
        status: HubspotSDK::CRM::BatchResponseSimplePublicObject::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
