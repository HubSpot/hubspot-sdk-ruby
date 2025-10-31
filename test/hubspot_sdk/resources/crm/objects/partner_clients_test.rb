# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Objects::PartnerClientsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.objects.partner_clients.update(
        "partnerClientId",
        properties: {
          property_checkbox: "false",
          property_date: "1572480000000",
          property_dropdown: "choice_b",
          property_multiple_checkboxes: "chocolate;strawberry",
          property_number: "17",
          property_radio: "option_1",
          property_string: "value"
        }
      )

    assert_pattern do
      response => HubspotSDK::CRM::SimplePublicObject
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::ValueWithTimestamp]]) | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.crm.objects.partner_clients.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::CRM::SimplePublicObjectWithAssociations
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        associations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::CRM::CollectionResponseAssociatedID]) | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::ValueWithTimestamp]]) | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hub_spot.crm.objects.partner_clients.get("partnerClientId")

    assert_pattern do
      response => HubspotSDK::CRM::SimplePublicObjectWithAssociations
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        associations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::CRM::CollectionResponseAssociatedID]) | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::ValueWithTimestamp]]) | nil
      }
    end
  end

  def test_search
    skip("Prism tests are disabled")

    response = @hub_spot.crm.objects.partner_clients.search

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponseWithTotalSimplePublicObject
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObject]),
        total: Integer,
        paging: HubspotSDK::Marketing::Paging | nil
      }
    end
  end
end
