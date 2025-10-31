# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Extensions::Calling::SettingsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.extensions.calling.settings.create(
        0,
        name: "HubPhone",
        url: "https://www.example.com/hubspot/iframe"
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

  def test_update
    skip("Prism tests are disabled")

    response = @hubspot.crm.extensions.calling.settings.update(0)

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

    response = @hubspot.crm.extensions.calling.settings.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.extensions.calling.settings.get(0)

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
end
