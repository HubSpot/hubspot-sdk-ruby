# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Settings::Currencies::CentralFxRatesTest < HubSpotSDK::Test::ResourceTest
  def test_create_currency_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.central_fx_rates.create_currency(currency_code: :AED)

    assert_pattern do
      response => HubSpotSDK::Settings::ExchangeRate
    end

    assert_pattern do
      response => {
        id: String,
        conversion_rate: Float,
        created_at: Time,
        effective_at: Time,
        from_currency_code: HubSpotSDK::Settings::ExchangeRate::FromCurrencyCode,
        to_currency_code: HubSpotSDK::Settings::ExchangeRate::ToCurrencyCode,
        updated_at: Time,
        visible_in_ui: HubSpotSDK::Internal::Type::Boolean
      }
    end
  end

  def test_get_information
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.central_fx_rates.get_information

    assert_pattern do
      response => HubSpotSDK::Settings::CentralExchangeRatesInformation
    end

    assert_pattern do
      response => {
        central_exchange_rates_enabled: HubSpotSDK::Internal::Type::Boolean
      }
    end
  end

  def test_get_unsupported_currencies
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.central_fx_rates.get_unsupported_currencies

    assert_pattern do
      response => HubSpotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::CurrencyCodeInfo])
      }
    end
  end
end
