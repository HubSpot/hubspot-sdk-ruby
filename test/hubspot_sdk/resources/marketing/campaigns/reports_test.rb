# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Campaigns::ReportsTest < HubspotSDK::Test::ResourceTest
  def test_get_attribution_metrics
    skip("Prism tests are disabled")

    response = @hubspot.marketing.campaigns.reports.get_attribution_metrics("campaignGuid")

    assert_pattern do
      response => HubspotSDK::Marketing::MetricsCounters
    end

    assert_pattern do
      response => {
        influenced_contacts: Integer,
        new_contacts_first_touch: Integer,
        new_contacts_last_touch: Integer,
        sessions: Integer
      }
    end
  end

  def test_get_revenue_attribution
    skip("Prism tests are disabled")

    response = @hubspot.marketing.campaigns.reports.get_revenue_attribution("campaignGuid")

    assert_pattern do
      response => HubspotSDK::Marketing::RevenueAttributionAggregate
    end

    assert_pattern do
      response => {
        contacts_number: Integer | nil,
        currency_code: HubspotSDK::Marketing::RevenueAttributionAggregate::CurrencyCode | nil,
        deal_amount: Float | nil,
        deals_number: Integer | nil,
        revenue_amount: Float | nil
      }
    end
  end

  def test_list_contact_ids_by_type_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.campaigns.reports.list_contact_ids_by_type(
        "contactType",
        campaign_guid: "campaignGuid"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::CollectionResponseContactReferenceForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::ContactReference]),
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end
end
