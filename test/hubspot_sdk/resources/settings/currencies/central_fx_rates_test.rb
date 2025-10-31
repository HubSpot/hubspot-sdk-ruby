# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Settings::Currencies::CentralFxRatesTest < HubspotSDK::Test::ResourceTest
  def test_create_currency_required_params
    skip("Prism tests are disabled")

    response = @hubspot.settings.currencies.central_fx_rates.create_currency(currency_code: :AED)

    assert_pattern do
      response => HubspotSDK::Settings::ExchangeRate
    end

    assert_pattern do
      response => {
        id: String,
        conversion_rate: Float,
        created_at: Time,
        effective_at: Time,
        from_currency_code: HubspotSDK::Settings::ExchangeRate::FromCurrencyCode,
        to_currency_code: HubspotSDK::Settings::ExchangeRate::ToCurrencyCode,
        updated_at: Time,
        visible_in_ui: HubspotSDK::Internal::Type::Boolean
      }
    end
  end

  def test_get_information
    skip("Prism tests are disabled")

    response = @hubspot.settings.currencies.central_fx_rates.get_information

    assert_pattern do
      response => HubspotSDK::Settings::CentralExchangeRatesInformation
    end

    assert_pattern do
      response => {
        central_exchange_rates_enabled: HubspotSDK::Internal::Type::Boolean
      }
    end
  end

  def test_get_unsupported_currencies
    skip("Prism tests are disabled")

    response = @hubspot.settings.currencies.central_fx_rates.get_unsupported_currencies

    assert_pattern do
      response => HubspotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::CurrencyCodeInfo])
      }
    end
  end
end
