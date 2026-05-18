# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Objects::ContractsTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.contracts.list

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

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.objects.contracts.get("contractId")

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
end
