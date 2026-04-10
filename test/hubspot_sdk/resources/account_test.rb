# frozen_string_literal: true

require_relative "../test_helper"

class HubSpotSDK::Test::Resources::AccountTest < HubSpotSDK::Test::ResourceTest
  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.account.get

    assert_pattern do
      response => HubSpotSDK::Account::PortalInformationResponse
    end

    assert_pattern do
      response => {
        account_type: HubSpotSDK::Account::PortalInformationResponse::AccountType,
        additional_currencies: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        company_currency: String,
        data_hosting_location: String,
        portal_id: Integer,
        time_zone: String,
        ui_domain: String,
        utc_offset: String,
        utc_offset_milliseconds: Integer
      }
    end
  end

  def test_get_daily_private_apps_usage
    skip("Mock server tests are disabled")

    response = @hubspot.account.get_daily_private_apps_usage

    assert_pattern do
      response => HubSpotSDK::Account::CollectionResponseAPIUsageNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Account::APIUsage])
      }
    end
  end
end
