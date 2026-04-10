# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::Campaigns::BudgetTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.budget.create("campaignGuid", amount: 0, name: "name", order: 0)

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicBudgetItem
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
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.campaigns.budget.update(
        0,
        campaign_guid: "campaignGuid",
        amount: 0,
        name: "name",
        order: 0
      )

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicBudgetItem
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
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.budget.delete(0, campaign_guid: "campaignGuid")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.budget.get(0, campaign_guid: "campaignGuid")

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicBudgetItem
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

  def test_get_totals
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.campaigns.budget.get_totals("campaignGuid")

    assert_pattern do
      response => HubSpotSDK::Marketing::PublicBudgetTotals
    end

    assert_pattern do
      response => {
        budget_items: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicBudgetItem]),
        currency_code: HubSpotSDK::Marketing::PublicBudgetTotals::CurrencyCode,
        spend_items: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::PublicSpendItem]),
        budget_total: Float | nil,
        remaining_budget: Float | nil,
        spend_total: Float | nil
      }
    end
  end
end
