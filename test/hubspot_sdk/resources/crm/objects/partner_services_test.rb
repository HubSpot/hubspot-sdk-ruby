# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Objects::PartnerServicesTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.partner_services.update(inputs: [{id: "id", properties: {foo: "string"}}])

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

  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.partner_services.list("toObjectType", partner_service_id: "partnerServiceId")

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

  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.partner_services.get(
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

  def test_search_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.partner_services.search(
        after: "after",
        filter_groups: [{filters: [{operator: :BETWEEN, propertyName: "propertyName"}]}],
        limit: 0,
        properties: ["string"],
        sorts: ["string"]
      )

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObject]),
        total: Integer,
        paging: HubspotSDK::Paging | nil
      }
    end
  end
end
