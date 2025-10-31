# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Conversations::CustomChannels::ChannelAccountsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.conversations.custom_channels.channel_accounts.create(
        "channelId",
        authorized: true,
        inbox_id: "inboxId",
        name: "name"
      )

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        authorized: HubspotSDK::Internal::Type::Boolean | nil,
        channel_id: String | nil,
        created_at: Time | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil,
        inbox_id: String | nil,
        name: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.conversations.custom_channels.channel_accounts.update(
        "channelAccountId",
        channel_id: "channelId"
      )

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        authorized: HubspotSDK::Internal::Type::Boolean | nil,
        channel_id: String | nil,
        created_at: Time | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil,
        inbox_id: String | nil,
        name: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.conversations.custom_channels.channel_accounts.list("channelId")

    assert_pattern do
      response => HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelAccountForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicChannelAccount]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.conversations.custom_channels.channel_accounts.get("channelAccountId", channel_id: "channelId")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicChannelAccount
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        id: String | nil,
        active: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        authorized: HubspotSDK::Internal::Type::Boolean | nil,
        channel_id: String | nil,
        created_at: Time | nil,
        delivery_identifier: HubspotSDK::Conversations::PublicDeliveryIdentifier | nil,
        inbox_id: String | nil,
        name: String | nil
      }
    end
  end
end
