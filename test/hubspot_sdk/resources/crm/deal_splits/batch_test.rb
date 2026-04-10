# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::DealSplits::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_read_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.deal_splits.batch.read(inputs: [{id: "id"}])

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseDealToDealSplits
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::DealToDealSplits]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseDealToDealSplits::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_upsert_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.deal_splits.batch.upsert(inputs: [{id: 0, splits: [{ownerId: 0, percentage: 0}]}])

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseDealToDealSplits
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::DealToDealSplits]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseDealToDealSplits::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
