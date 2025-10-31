# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Emails::StatisticsTest < HubspotSDK::Test::ResourceTest
  def test_get
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.emails.statistics.get

    assert_pattern do
      response => HubspotSDK::Marketing::AggregateEmailStatistics
    end

    assert_pattern do
      response => {
        aggregate: HubspotSDK::Marketing::EmailStatisticsData | nil,
        campaign_aggregations: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Marketing::EmailStatisticsData]) | nil,
        emails: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]) | nil
      }
    end
  end

  def test_get_histogram
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.emails.statistics.get_histogram

    assert_pattern do
      response => HubspotSDK::Marketing::CollectionResponseWithTotalEmailStatisticIntervalNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::EmailStatisticInterval]),
        total: Integer
      }
    end
  end
end
