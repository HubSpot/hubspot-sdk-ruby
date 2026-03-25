# frozen_string_literal: true

require_relative "../test_helper"

class HubspotSDK::Test::Resources::AccountTest < HubspotSDK::Test::ResourceTest
  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.account.get

    assert_pattern do
      response => HubspotSDK::Account::PortalInformationResponse
    end

    assert_pattern do
      response => {
        account_type: HubspotSDK::Account::PortalInformationResponse::AccountType,
        additional_currencies: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
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
      response => HubspotSDK::Account::CollectionResponseAPIUsageNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::APIUsage])
      }
    end
  end
end
