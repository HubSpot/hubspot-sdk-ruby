# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Objects::OrdersTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.orders.create(
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

    response = @hubspot.crm.objects.orders.update(inputs: [{id: "id", properties: {foo: "string"}}])

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

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.orders.list

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

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.orders.delete(inputs: [{id: "430001"}])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.orders.get(
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
      @hubspot.crm.objects.orders.search(
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

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.orders.upsert(inputs: [{id: "id", properties: {foo: "string"}}])

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
