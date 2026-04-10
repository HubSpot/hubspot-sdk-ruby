# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::Campaigns::AssetsTest < HubSpotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.campaigns.assets.update(
        "assetId",
        campaign_guid: "campaignGuid",
        asset_type: "assetType"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.assets.list("assetType", campaign_guid: "campaignGuid")

    assert_pattern do
      response => HubSpotSDK::Marketing::CollectionResponsePublicCampaignAssetForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicCampaignAsset]),
        paging: HubSpotSDK::ForwardPaging | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.campaigns.assets.delete(
        "assetId",
        campaign_guid: "campaignGuid",
        asset_type: "assetType"
      )

    assert_pattern do
      response => nil
    end
  end
end
