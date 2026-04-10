# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Conversations::CustomChannelsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.create(capabilities: {foo: {}}, name: "name")

    assert_pattern do
      response => HubSpotSDK::Conversations::PublicChannelIntegrationChannel
    end

    assert_pattern do
      response => {
        id: String,
        capabilities: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
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
    skip("Mock server tests are disabled")

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
      response => HubSpotSDK::Conversations::PublicChannelIntegrationChannel
    end

    assert_pattern do
      response => {
        id: String,
        capabilities: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
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
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Conversations::PublicChannelIntegrationChannel
    end

    assert_pattern do
      row => {
        id: String,
        capabilities: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]),
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
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.get(0, channel_id: 0)

    assert_pattern do
      response => HubSpotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      response => {
        id: String,
        active: HubSpotSDK::Internal::Type::Boolean,
        archived: HubSpotSDK::Internal::Type::Boolean,
        authorized: HubSpotSDK::Internal::Type::Boolean,
        channel_id: String,
        created_at: Time,
        inbox_id: String,
        name: String,
        archived_at: Time | nil,
        delivery_identifier: HubSpotSDK::Conversations::PublicDeliveryIdentifier | nil
      }
    end
  end
end
