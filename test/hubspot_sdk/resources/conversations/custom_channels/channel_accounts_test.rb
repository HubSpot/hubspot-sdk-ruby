# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Conversations::CustomChannels::ChannelAccountsTest < HubspotSDK::Test::ResourceTest
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
      response => HubspotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        archived: HubspotSDK::Internal::Type::Boolean,
        authorized: HubspotSDK::Internal::Type::Boolean,
        channel_id: String,
        created_at: Time,
        inbox_id: String,
        name: String,
        archived_at: Time | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.channel_accounts.update(0, channel_id: 0)

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        archived: HubspotSDK::Internal::Type::Boolean,
        authorized: HubspotSDK::Internal::Type::Boolean,
        channel_id: String,
        created_at: Time,
        inbox_id: String,
        name: String,
        archived_at: Time | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.channel_accounts.list(0)

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      row => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        archived: HubspotSDK::Internal::Type::Boolean,
        authorized: HubspotSDK::Internal::Type::Boolean,
        channel_id: String,
        created_at: Time,
        inbox_id: String,
        name: String,
        archived_at: Time | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil
      }
    end
  end

  def test_update_staging_token_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.conversations.custom_channels.channel_accounts.update_staging_token(
        "accountToken",
        channel_id: 0,
        account_name: "accountName",
        delivery_identifier: {type: :CHANNEL_SPECIFIC_OPAQUE_ID, value: "value"}
      )

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelAccountStagingToken
    end

    assert_pattern do
      response => {
        account_token: String,
        created_at: Time,
        generic_channel_id: Integer,
        inbox_id: Integer,
        user_id: Integer,
        account_name: String | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil
      }
    end
  end
end
