# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Associations::V4Test < HubspotSDK::Test::ResourceTest
  def test_merge_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.v4.merge(
        "objectType",
        object_id_to_merge: "objectIdToMerge",
        primary_object_id: "primaryObjectId"
      )

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
end
