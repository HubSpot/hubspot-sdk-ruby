# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Settings::CurrenciesTest < HubspotSDK::Test::ResourceTest
  def test_batch_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.settings.currencies.batch_create(inputs: [{conversionRate: 0, fromCurrencyCode: :AED}])

    assert_pattern do
      response => HubspotSDK::Settings::BatchResponseExchangeRate
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::ExchangeRate]),
        started_at: Time,
        status: HubspotSDK::Settings::BatchResponseExchangeRate::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.settings.currencies.batch_get(inputs: [{id: "37295"}])

    assert_pattern do
      response => HubspotSDK::Settings::BatchResponseExchangeRate
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::ExchangeRate]),
        started_at: Time,
        status: HubspotSDK::Settings::BatchResponseExchangeRate::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_update_required_params
    skip("Prism tests are disabled")

    response = @hubspot.settings.currencies.batch_update(inputs: [{id: "id", conversionRate: 0}])

    assert_pattern do
      response => HubspotSDK::Settings::BatchResponseExchangeRate
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::ExchangeRate]),
        started_at: Time,
        status: HubspotSDK::Settings::BatchResponseExchangeRate::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_exchange_rate_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.settings.currencies.create_exchange_rate(conversion_rate: 0, from_currency_code: :AED)

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

  def test_get_company_currency
    skip("Prism tests are disabled")

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

  def test_get_exchange_rate_by_id
    skip("Prism tests are disabled")

    response = @hubspot.settings.currencies.get_exchange_rate_by_id("exchangeRateId")

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

  def test_list_codes
    skip("Prism tests are disabled")

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

  def test_list_current_exchange_rates
    skip("Prism tests are disabled")

    response = @hubspot.settings.currencies.list_current_exchange_rates

    assert_pattern do
      response => HubspotSDK::Settings::CollectionResponseExchangeRateNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::ExchangeRate])
      }
    end
  end

  def test_list_exchange_rates
    skip("Prism tests are disabled")

    response = @hubspot.settings.currencies.list_exchange_rates

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Settings::ExchangeRate
    end

    assert_pattern do
      row => {
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

  def test_update_company_currency_required_params
    skip("Prism tests are disabled")

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

  def test_update_exchange_rate_required_params
    skip("Prism tests are disabled")

    response = @hubspot.settings.currencies.update_exchange_rate("exchangeRateId", conversion_rate: 0)

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

  def test_update_visibility_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.settings.currencies.update_visibility(
        from_currency_code: :AED,
        to_currency_code: :AED,
        visible_in_ui: true
      )

    assert_pattern do
      response => nil
    end
  end
end
