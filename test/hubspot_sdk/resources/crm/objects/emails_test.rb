# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Objects::EmailsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.emails.create(
        associations: [
          {
            to: {id: "37295"},
            types: [{associationCategory: :HUBSPOT_DEFINED, associationTypeId: 0}]
          }
        ],
        properties: {foo: "string"}
      )

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

    response = @hubspot.crm.objects.emails.update("emailId", properties: {foo: "string"})

    assert_pattern do
      response => HubspotSDK::Crm::SimplePublicObject
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived_at: Time | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.emails.list

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
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived_at: Time | nil,
        associations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Crm::CollectionResponseAssociatedID]) | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.emails.delete("emailId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.emails.get("emailId")

    assert_pattern do
      response => HubspotSDK::Crm::SimplePublicObjectWithAssociations
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived_at: Time | nil,
        associations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Crm::CollectionResponseAssociatedID]) | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
      }
    end
  end

  def test_search_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.emails.search(
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
