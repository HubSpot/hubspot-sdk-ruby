# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Marketing::MarketingEvents::SettingsTest < HubSpotSDK::Test::ResourceTest
  def test_create_or_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.marketing.marketing_events.settings.create_or_update(0, event_details_url: "eventDetailsUrl")

    assert_pattern do
      response => HubSpotSDK::Marketing::EventDetailSettings
    end

    assert_pattern do
      response => {
        app_id: Integer,
        event_details_url: String
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.marketing.marketing_events.settings.get(0)

    assert_pattern do
      response => HubSpotSDK::Marketing::EventDetailSettings
    end

    assert_pattern do
      response => {
        app_id: Integer,
        event_details_url: String
      }
    end
  end
end
