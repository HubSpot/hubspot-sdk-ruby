# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::CustomChannelsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hubspot.conversations.custom_channels.create(capabilities: {foo: {}}, name: "name")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelIntegrationChannel
    end

    assert_pattern do
      response => {
        id: String,
        capabilities: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        created_at: Time,
        name: String,
        channel_account_connection_redirect_url: String | nil,
        channel_description: String | nil,
        channel_logo_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.conversations.custom_channels.update(
        0,
        capabilities: {foo: {}},
        channel_account_connection_redirect_url: {},
        channel_description: {},
        channel_logo_url: {},
        name: {},
        webhook_url: {}
      )

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelIntegrationChannel
    end

    assert_pattern do
      response => {
        id: String,
        capabilities: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        created_at: Time,
        name: String,
        channel_account_connection_redirect_url: String | nil,
        channel_description: String | nil,
        channel_logo_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.conversations.custom_channels.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Conversations::PublicChannelIntegrationChannel
    end

    assert_pattern do
      row => {
        id: String,
        capabilities: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        created_at: Time,
        name: String,
        channel_account_connection_redirect_url: String | nil,
        channel_description: String | nil,
        channel_logo_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.conversations.custom_channels.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.conversations.custom_channels.get(0)

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelIntegrationChannel
    end

    assert_pattern do
      response => {
        id: String,
        capabilities: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]),
        created_at: Time,
        name: String,
        channel_account_connection_redirect_url: String | nil,
        channel_description: String | nil,
        channel_logo_url: String | nil,
        webhook_url: String | nil
      }
    end
  end
end
