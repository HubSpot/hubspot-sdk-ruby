# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Account::UsageTest < HubspotSDK::Test::ResourceTest
  def test_get_daily_private_apps_usage
    skip("Prism tests are disabled")

    response = @hubspot.account.usage.get_daily_private_apps_usage

    assert_pattern do
      response => HubspotSDK::Account::CollectionResponseAPIUsage
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::APIUsage]),
        paging: HubspotSDK::Marketing::Paging | nil
      }
    end
  end
end
