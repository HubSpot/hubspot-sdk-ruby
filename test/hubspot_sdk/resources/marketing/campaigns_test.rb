# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Marketing::CampaignsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.create(properties: {foo: "string"})

    assert_pattern do
      response => HubspotSDK::Marketing::PublicCampaign
    end

    assert_pattern do
      response => {
        id: String,
        business_units: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBusinessUnit]),
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String]),
        updated_at: Time
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.update("campaignGuid", properties: {foo: "string"})

    assert_pattern do
      response => HubspotSDK::Marketing::PublicCampaign
    end

    assert_pattern do
      response => {
        id: String,
        business_units: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBusinessUnit]),
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String]),
        updated_at: Time
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Marketing::PublicCampaign
    end

    assert_pattern do
      row => {
        id: String,
        business_units: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBusinessUnit]),
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String]),
        updated_at: Time
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.delete("campaignGuid")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.get("campaignGuid")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicCampaignWithAssets
    end

    assert_pattern do
      response => {
        id: String,
        assets: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Marketing::CollectionResponsePublicCampaignAsset]),
        business_units: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBusinessUnit]),
        created_at: Time,
        properties: ^(HubspotSDK::Internal::Type::HashOf[String]),
        updated_at: Time
      }
    end
  end
end
