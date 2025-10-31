# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Objects::DealSplitsTest < HubspotSDK::Test::ResourceTest
  def test_batch_read_required_params
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.deal_splits.batch_read(inputs: [{id: "37295"}])

    assert_pattern do
      response => HubspotSDK::Models::CRM::Objects::DealSplitBatchReadResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::Objects::DealSplitBatchReadResponse::Result]),
        started_at: Time,
        status: HubspotSDK::Models::CRM::Objects::DealSplitBatchReadResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_upsert_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.deal_splits.batch_upsert(inputs: [{id: 0, splits: [{ownerId: 0, percentage: 0}]}])

    assert_pattern do
      response => HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Result]),
        started_at: Time,
        status: HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
