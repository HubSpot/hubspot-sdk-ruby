# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Objects::Discounts::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.discounts.batch.create(
        inputs: [
          {
            associations: [
              {
                to: {id: "id"},
                types: [{associationCategory: :HUBSPOT_DEFINED, associationTypeId: 0}]
              }
            ],
            properties: {foo: "string"}
          }
        ]
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
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.discounts.batch.update(inputs: [{id: "id", properties: {foo: "string"}}])

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObject]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponseSimplePublicObject::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.discounts.batch.delete(inputs: [{id: "430001"}])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.discounts.batch.get(
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
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.discounts.batch.upsert(inputs: [{id: "id", properties: {foo: "string"}}])

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicUpsertObject]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
