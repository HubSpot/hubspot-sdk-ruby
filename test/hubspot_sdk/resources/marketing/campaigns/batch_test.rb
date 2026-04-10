# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::Campaigns::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.batch.create(inputs: [{properties: {foo: "string"}}])

    assert_pattern do
      response => HubSpotSDK::Marketing::BatchResponsePublicCampaign
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaign]),
        started_at: Time,
        status: HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.batch.update(inputs: [{id: "id", properties: {foo: "string"}}])

    assert_pattern do
      response => HubSpotSDK::Marketing::BatchResponsePublicCampaign
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaign]),
        started_at: Time,
        status: HubSpotSDK::Marketing::BatchResponsePublicCampaign::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.batch.delete(inputs: [{id: "id"}])

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.batch.get(inputs: [{id: "id"}])

    assert_pattern do
      response => HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignWithAssets]),
        started_at: Time,
        status: HubSpotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
