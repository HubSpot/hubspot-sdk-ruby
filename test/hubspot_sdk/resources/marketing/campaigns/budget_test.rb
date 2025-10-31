# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Campaigns::BudgetTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.marketing.campaigns.budget.create("campaignGuid", amount: 0, name: "name", order: 0)

    assert_pattern do
      response => HubspotSDK::Marketing::PublicBudgetItem
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
      @hubspot.marketing.campaigns.budget.update(
        0,
        campaign_guid: "campaignGuid",
        amount: 0,
        name: "name",
        order: 0
      )

    assert_pattern do
      response => HubspotSDK::Marketing::PublicBudgetItem
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

    response = @hubspot.marketing.campaigns.budget.delete(0, campaign_guid: "campaignGuid")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.marketing.campaigns.budget.get(0, campaign_guid: "campaignGuid")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicBudgetItem
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
    skip("Prism tests are disabled")

    response = @hubspot.marketing.campaigns.budget.get_totals("campaignGuid")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicBudgetTotals
    end

    assert_pattern do
      response => {
        budget_items: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBudgetItem]),
        currency_code: HubspotSDK::Marketing::PublicBudgetTotals::CurrencyCode,
        spend_items: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicSpendItem]),
        budget_total: Float | nil,
        remaining_budget: Float | nil,
        spend_total: Float | nil
      }
    end
  end
end
