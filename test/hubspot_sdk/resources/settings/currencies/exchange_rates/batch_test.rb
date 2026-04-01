# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Settings::Currencies::ExchangeRates::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.settings.currencies.exchange_rates.batch.create(
        inputs: [{conversionRate: 0, fromCurrencyCode: :AED}]
      )

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

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.settings.currencies.exchange_rates.batch.update(inputs: [{id: "id", conversionRate: 0}])

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

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.settings.currencies.exchange_rates.batch.get(inputs: [{id: "id"}])

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
end
