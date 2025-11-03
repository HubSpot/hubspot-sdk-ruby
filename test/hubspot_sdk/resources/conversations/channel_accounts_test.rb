# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::ChannelAccountsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.conversations.channel_accounts.list

    assert_pattern do
      response => HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelAccountForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::ConversationsPublicChannelAccount]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.conversations.channel_accounts.get("channelAccountId")

    assert_pattern do
      response => HubspotSDK::Conversations::ConversationsPublicChannelAccount
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
