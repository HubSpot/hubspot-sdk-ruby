# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Objects::ContactsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.contacts.create(
        associations: [
          {
            to: {id: "id"},
            types: [{associationCategory: :HUBSPOT_DEFINED, associationTypeId: 0}]
          }
        ],
        properties: {foo: "string"}
      )

    assert_pattern do
      response => HubSpotSDK::Crm::SimplePublicObject
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubSpotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived_at: Time | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.contacts.update("contactId", properties: {foo: "string"})

    assert_pattern do
      response => HubSpotSDK::Crm::SimplePublicObject
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubSpotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived_at: Time | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.contacts.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Crm::SimplePublicObjectWithAssociations
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubSpotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived_at: Time | nil,
        associations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Crm::CollectionResponseAssociatedID]) | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.contacts.delete("contactId")

    assert_pattern do
      response => nil
    end
  end

  def test_gdpr_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.contacts.gdpr_delete(object_id_: "objectId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.contacts.get("contactId")

    assert_pattern do
      response => HubSpotSDK::Crm::SimplePublicObjectWithAssociations
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubSpotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived_at: Time | nil,
        associations: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Crm::CollectionResponseAssociatedID]) | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
      }
    end
  end

  def test_merge_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.contacts.merge(
        object_id_to_merge: "objectIdToMerge",
        primary_object_id: "primaryObjectId"
      )

    assert_pattern do
      response => HubSpotSDK::Crm::SimplePublicObject
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        properties: ^(HubSpotSDK::Internal::Type::HashOf[String, nil?: true]),
        updated_at: Time,
        archived_at: Time | nil,
        object_write_trace_id: String | nil,
        properties_with_history: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ValueWithTimestamp]]) | nil,
        url: String | nil
      }
    end
  end

  def test_search_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.contacts.search(
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
