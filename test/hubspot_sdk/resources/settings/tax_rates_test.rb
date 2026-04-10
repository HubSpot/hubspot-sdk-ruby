# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Settings::TaxRatesTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.settings.tax_rates.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Settings::PublicTaxRateGroup
    end

    assert_pattern do
      row => {
        id: String,
        active: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        label: String,
        name: String,
        percentage_rate: Float,
        updated_at: Time
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.settings.tax_rates.get("taxRateGroupId")

    assert_pattern do
      response => HubSpotSDK::Settings::PublicTaxRateGroup
    end

    assert_pattern do
      response => {
        id: String,
        active: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        label: String,
        name: String,
        percentage_rate: Float,
        updated_at: Time
      }
    end
  end
end
