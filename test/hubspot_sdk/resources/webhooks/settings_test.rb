# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Webhooks::SettingsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.webhooks.settings.update(
        0,
        target_url: "https://www.example.com/hubspot/target",
        throttling: {maxConcurrentRequests: 10}
      )

    assert_pattern do
      response => HubspotSDK::Webhooks::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        target_url: String,
        throttling: HubspotSDK::Webhooks::ThrottlingSettings,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.webhooks.settings.list(0)

    assert_pattern do
      response => HubspotSDK::Webhooks::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        target_url: String,
        throttling: HubspotSDK::Webhooks::ThrottlingSettings,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hub_spot.webhooks.settings.delete(0)

    assert_pattern do
      response => nil
    end
  end
end
