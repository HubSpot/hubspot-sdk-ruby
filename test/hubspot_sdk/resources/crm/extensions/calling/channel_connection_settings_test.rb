# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Extensions::Calling::ChannelConnectionSettingsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.extensions.calling.channel_connection_settings.create(0, is_ready: true, url: "url")

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @hubspot.crm.extensions.calling.channel_connection_settings.update(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.crm.extensions.calling.channel_connection_settings.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.extensions.calling.channel_connection_settings.get(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String
      }
    end
  end
end
