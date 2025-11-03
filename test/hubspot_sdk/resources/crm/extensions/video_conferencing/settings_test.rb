# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Extensions::VideoConferencing::SettingsTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.extensions.video_conferencing.settings.update(
        0,
        create_meeting_url: "https://example.com/create-meeting"
      )

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::ExternalSettings
    end

    assert_pattern do
      response => {
        create_meeting_url: String,
        delete_meeting_url: String | nil,
        fetch_accounts_uri: String | nil,
        update_meeting_url: String | nil,
        user_verify_url: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.crm.extensions.video_conferencing.settings.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.extensions.video_conferencing.settings.get(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::ExternalSettings
    end

    assert_pattern do
      response => {
        create_meeting_url: String,
        delete_meeting_url: String | nil,
        fetch_accounts_uri: String | nil,
        update_meeting_url: String | nil,
        user_verify_url: String | nil
      }
    end
  end
end
