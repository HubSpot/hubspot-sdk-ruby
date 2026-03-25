# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Campaigns::AssetsTest < HubspotSDK::Test::ResourceTest
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
      response => HubspotSDK::Marketing::CollectionResponsePublicCampaignAssetForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicCampaignAsset]),
        paging: HubspotSDK::ForwardPaging | nil
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
