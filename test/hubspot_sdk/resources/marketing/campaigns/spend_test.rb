# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Campaigns::SpendTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.campaigns.spend.create("campaignGuid", amount: 0, name: "name", order: 0)

    assert_pattern do
      response => HubspotSDK::Marketing::PublicSpendItem
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Integer,
        name: String,
        order: Integer,
        updated_at: Integer,
        description: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.campaigns.spend.update(
        0,
        campaign_guid: "campaignGuid",
        amount: 0,
        name: "name",
        order: 0
      )

    assert_pattern do
      response => HubspotSDK::Marketing::PublicSpendItem
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Integer,
        name: String,
        order: Integer,
        updated_at: Integer,
        description: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.campaigns.spend.delete(0, campaign_guid: "campaignGuid")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.campaigns.spend.get(0, campaign_guid: "campaignGuid")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicSpendItem
    end

    assert_pattern do
      response => {
        id: String,
        amount: Float,
        created_at: Integer,
        name: String,
        order: Integer,
        updated_at: Integer,
        description: String | nil
      }
    end
  end
end
