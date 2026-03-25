# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Extensions::CallingTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.extensions.calling.create(
        0,
        url_to_retrieve_authed_recording: "urlToRetrieveAuthedRecording"
      )

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::RecordingSettingsResponse
    end

    assert_pattern do
      response => {
        url_to_retrieve_authed_recording: String
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.update(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::RecordingSettingsResponse
    end

    assert_pattern do
      response => {
        url_to_retrieve_authed_recording: String
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.get(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::RecordingSettingsResponse
    end

    assert_pattern do
      response => {
        url_to_retrieve_authed_recording: String
      }
    end
  end

  def test_mark_ready_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.mark_ready(engagement_id: 0)

    assert_pattern do
      response => nil
    end
  end
end
