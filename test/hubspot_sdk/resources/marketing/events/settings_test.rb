# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Events::SettingsTest < HubspotSDK::Test::ResourceTest
  def test_create_or_update_required_params
    skip("Prism tests are disabled")

    response = @hubspot.marketing.events.settings.create_or_update(0, event_details_url: "eventDetailsUrl")

    assert_pattern do
      response => HubspotSDK::Marketing::EventDetailSettings
    end

    assert_pattern do
      response => {
        app_id: Integer,
        event_details_url: String
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.marketing.events.settings.get(0)

    assert_pattern do
      response => HubspotSDK::Marketing::EventDetailSettings
    end

    assert_pattern do
      response => {
        app_id: Integer,
        event_details_url: String
      }
    end
  end
end
