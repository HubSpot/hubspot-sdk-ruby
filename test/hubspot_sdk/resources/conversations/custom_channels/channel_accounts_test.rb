# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Conversations::CustomChannels::ChannelAccountsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.conversations.custom_channels.channel_accounts.create(
        0,
        authorized: true,
        inbox_id: "inboxId",
        name: "name"
      )

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

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.channel_accounts.update(0, channel_id: 0)

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

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.channel_accounts.list(0)

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      row => {
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

  def test_update_staging_token_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.conversations.custom_channels.channel_accounts.update_staging_token(
        "accountToken",
        channel_id: 0
      )

    assert_pattern do
      response => HubSpotSDK::Conversations::PublicChannelAccountStagingToken
    end

    assert_pattern do
      response => {
        account_token: String,
        created_at: Time,
        generic_channel_id: Integer,
        inbox_id: Integer,
        user_id: Integer,
        account_name: String | nil,
        delivery_identifier: HubSpotSDK::Conversations::PublicDeliveryIdentifier | nil
      }
    end
  end
end
