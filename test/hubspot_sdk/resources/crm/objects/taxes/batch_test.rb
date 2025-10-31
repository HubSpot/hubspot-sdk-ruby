# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Objects::Taxes::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.taxes.batch.create(inputs: [{properties: {foo: "string"}}])

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

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.taxes.batch.update(inputs: [{id: "id", properties: {foo: "string"}}])

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

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.taxes.batch.delete(inputs: [{id: "id"}])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.taxes.batch.get(
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

  def test_upsert_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.taxes.batch.upsert(inputs: [{id: "id", properties: {foo: "string"}}])

    assert_pattern do
      response => HubspotSDK::CRM::BatchResponseSimplePublicUpsertObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicUpsertObject]),
        started_at: Time,
        status: HubspotSDK::CRM::BatchResponseSimplePublicUpsertObject::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
