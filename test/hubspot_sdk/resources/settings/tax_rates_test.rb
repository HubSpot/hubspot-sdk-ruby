# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Settings::TaxRatesTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.settings.tax_rates.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Settings::PublicTaxRateGroup
    end

    assert_pattern do
      row => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        label: String,
        name: String,
        percentage_rate: Float,
        updated_at: Time
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.settings.tax_rates.get("taxRateGroupId")

    assert_pattern do
      response => HubspotSDK::Settings::PublicTaxRateGroup
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        label: String,
        name: String,
        percentage_rate: Float,
        updated_at: Time
      }
    end
  end
end
