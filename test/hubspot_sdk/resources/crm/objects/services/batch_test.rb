# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Objects::Services::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.services.batch.create(
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
      response => HubSpotSDK::Crm::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObject]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseSimplePublicObject::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.services.batch.update(inputs: [{id: "id", properties: {foo: "string"}}])

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObject]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseSimplePublicObject::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.services.batch.delete(inputs: [{id: "430001"}])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.services.batch.get(
        inputs: [{id: "430001"}],
        properties: ["string"],
        properties_with_history: ["string"]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObject]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseSimplePublicObject::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.services.batch.upsert(inputs: [{id: "id", properties: {foo: "string"}}])

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseSimplePublicUpsertObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicUpsertObject]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
