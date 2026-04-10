# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Extensions::VideoConferencingTest < HubSpotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.video_conferencing.update(0, create_meeting_url: "createMeetingUrl")

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::ExternalSettings
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
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.video_conferencing.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.video_conferencing.get(0)

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::ExternalSettings
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
