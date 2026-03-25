# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Settings::CurrenciesTest < HubspotSDK::Test::ResourceTest
  def test_get_company_currency
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.get_company_currency

    assert_pattern do
      response => HubspotSDK::Settings::CompanyCurrency
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time
      }
    end
  end

  def test_list_codes
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.list_codes

    assert_pattern do
      response => HubspotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::CurrencyCodeInfo])
      }
    end
  end

  def test_update_company_currency_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.update_company_currency(currency_code: :AED)

    assert_pattern do
      response => HubspotSDK::Settings::CompanyCurrency
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time
      }
    end
  end
end
