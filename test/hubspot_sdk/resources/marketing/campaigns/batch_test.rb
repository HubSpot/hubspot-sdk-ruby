# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Campaigns::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.batch.create(inputs: [{properties: {foo: "string"}}])

    assert_pattern do
      response => HubspotSDK::Marketing::BatchResponsePublicCampaign
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaign]),
        started_at: Time,
        status: HubspotSDK::Marketing::BatchResponsePublicCampaign::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.batch.update(inputs: [{id: "id", properties: {foo: "string"}}])

    assert_pattern do
      response => HubspotSDK::Marketing::BatchResponsePublicCampaign
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaign]),
        started_at: Time,
        status: HubspotSDK::Marketing::BatchResponsePublicCampaign::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
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
      response => HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignWithAssets]),
        started_at: Time,
        status: HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
