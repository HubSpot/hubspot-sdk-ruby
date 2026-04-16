# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Objects::PartnerServicesTest < HubSpotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.partner_services.update("partnerServiceId", properties: {foo: "string"})

    assert_pattern do
      response => HubSpotSDK::Crm::SimplePublicObject
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubSpotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        archived_at: Time | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.partner_services.list("toObjectType", partner_service_id: "partnerServiceId")

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

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.partner_services.get("partnerServiceId")

    assert_pattern do
      response => HubSpotSDK::Crm::SimplePublicObjectWithAssociations
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubSpotSDK::Internal::Type::HashOf[String]),
        updated_at: Time,
        archived_at: Time | nil,
        associations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Crm::CollectionResponseAssociatedID]) | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
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
end
