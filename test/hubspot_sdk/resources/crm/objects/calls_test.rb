# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Objects::CallsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.calls.create(properties: {foo: "string"})

    assert_pattern do
      response => HubspotSDK::Crm::CreatedResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        created_resource_id: String,
        entity: HubspotSDK::Crm::SimplePublicObject,
        location: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.calls.update(
        "callId",
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
      response => HubspotSDK::Crm::SimplePublicObject
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
        properties_with_history: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ValueWithTimestamp]]) | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.calls.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Crm::SimplePublicObjectWithAssociations
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        associations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Crm::CollectionResponseAssociatedID]) | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ValueWithTimestamp]]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.calls.delete("callId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.calls.get("callId")

    assert_pattern do
      response => HubspotSDK::Crm::SimplePublicObjectWithAssociations
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        associations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Crm::CollectionResponseAssociatedID]) | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ValueWithTimestamp]]) | nil
      }
    end
  end

  def test_search
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.calls.search

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObject]),
        total: Integer,
        paging: HubspotSDK::Marketing::Paging | nil
      }
    end
  end
end
