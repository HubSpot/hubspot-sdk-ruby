# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Objects::PartnerClients::AssociationsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.partner_clients.associations.update(
        "associationType",
        partner_client_id: "partnerClientId",
        to_object_type: "toObjectType",
        to_object_id: "toObjectId"
      )

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

  def test_list_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.partner_clients.associations.list(
        "toObjectType",
        partner_client_id: "partnerClientId"
      )

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::CRM::AssociatedID
    end

    assert_pattern do
      row => {
        id: String,
        type: String
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.partner_clients.associations.delete(
        "associationType",
        partner_client_id: "partnerClientId",
        to_object_type: "toObjectType",
        to_object_id: "toObjectId"
      )

    assert_pattern do
      response => nil
    end
  end
end
