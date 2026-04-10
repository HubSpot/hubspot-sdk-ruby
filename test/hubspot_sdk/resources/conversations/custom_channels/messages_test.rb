# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Conversations::CustomChannels::MessagesTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.conversations.custom_channels.messages.create(
        0,
        attachments: [{fileId: "fileId", type: :FILE}],
        channel_account_id: "channelAccountId",
        message_direction: :INCOMING,
        recipients: [{deliveryIdentifier: {type: :CHANNEL_SPECIFIC_OPAQUE_ID, value: "value"}}],
        senders: [{deliveryIdentifier: {type: :CHANNEL_SPECIFIC_OPAQUE_ID, value: "value"}}],
        text: "text",
        timestamp: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubSpotSDK::Conversations::PublicConversationsMessage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        attachments: ^(HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Conversations::PublicConversationsMessage::Attachment]),
        channel_account_id: String,
        channel_id: String,
        client: HubSpotSDK::Conversations::PublicClient,
        conversations_thread_id: String,
        created_at: Time,
        created_by: String,
        direction: HubSpotSDK::Conversations::PublicConversationsMessage::Direction,
        recipients: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::PublicRecipient]),
        senders: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::PublicSender]),
        text: String,
        truncation_status: HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus,
        type: HubSpotSDK::Conversations::PublicConversationsMessage::Type,
        in_reply_to_id: String | nil,
        rich_text: String | nil,
        status: HubSpotSDK::Conversations::PublicMessageStatus | nil,
        subject: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.conversations.custom_channels.messages.update("messageId", channel_id: 0, status_type: :FAILED)

    assert_pattern do
      response => HubSpotSDK::Conversations::PublicConversationsMessage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        attachments: ^(HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Conversations::PublicConversationsMessage::Attachment]),
        channel_account_id: String,
        channel_id: String,
        client: HubSpotSDK::Conversations::PublicClient,
        conversations_thread_id: String,
        created_at: Time,
        created_by: String,
        direction: HubSpotSDK::Conversations::PublicConversationsMessage::Direction,
        recipients: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::PublicRecipient]),
        senders: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::PublicSender]),
        text: String,
        truncation_status: HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus,
        type: HubSpotSDK::Conversations::PublicConversationsMessage::Type,
        in_reply_to_id: String | nil,
        rich_text: String | nil,
        status: HubSpotSDK::Conversations::PublicMessageStatus | nil,
        subject: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.messages.get("messageId", channel_id: 0)

    assert_pattern do
      response => HubSpotSDK::Conversations::PublicConversationsMessage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubSpotSDK::Internal::Type::Boolean,
        attachments: ^(HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Conversations::PublicConversationsMessage::Attachment]),
        channel_account_id: String,
        channel_id: String,
        client: HubSpotSDK::Conversations::PublicClient,
        conversations_thread_id: String,
        created_at: Time,
        created_by: String,
        direction: HubSpotSDK::Conversations::PublicConversationsMessage::Direction,
        recipients: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::PublicRecipient]),
        senders: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::PublicSender]),
        text: String,
        truncation_status: HubSpotSDK::Conversations::PublicConversationsMessage::TruncationStatus,
        type: HubSpotSDK::Conversations::PublicConversationsMessage::Type,
        in_reply_to_id: String | nil,
        rich_text: String | nil,
        status: HubSpotSDK::Conversations::PublicMessageStatus | nil,
        subject: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
