# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Settings::Currencies::ExchangeRatesTest < HubSpotSDK::Test::ResourceTest
  def test_create_exchange_rate_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.settings.currencies.exchange_rates.create_exchange_rate(
        conversion_rate: 0,
        from_currency_code: :AED
      )

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

  def test_get_exchange_rate_by_id
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.exchange_rates.get_exchange_rate_by_id("exchangeRateId")

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

  def test_list_current_exchange_rates
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.exchange_rates.list_current_exchange_rates

    assert_pattern do
      response => HubSpotSDK::Settings::CollectionResponseExchangeRateNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::ExchangeRate])
      }
    end
  end

  def test_list_exchange_rates
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.exchange_rates.list_exchange_rates

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Settings::ExchangeRate
    end

    assert_pattern do
      row => {
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

  def test_update_exchange_rate_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.settings.currencies.exchange_rates.update_exchange_rate("exchangeRateId", conversion_rate: 0)

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

  def test_update_visibility_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.settings.currencies.exchange_rates.update_visibility(
        from_currency_code: :AED,
        to_currency_code: :AED,
        visible_in_ui: true
      )

    assert_pattern do
      response => nil
    end
  end
end
