# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Conversations::CustomChannels::MessagesTest < HubspotSDK::Test::ResourceTest
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
      response => HubspotSDK::Conversations::PublicConversationsMessage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        attachments: ^(HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::PublicConversationsMessage::Attachment]),
        channel_account_id: String,
        channel_id: String,
        client: HubspotSDK::Conversations::PublicClient,
        conversations_thread_id: String,
        created_at: Time,
        created_by: String,
        direction: HubspotSDK::Conversations::PublicConversationsMessage::Direction,
        recipients: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicRecipient]),
        senders: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicSender]),
        text: String,
        truncation_status: HubspotSDK::Conversations::PublicConversationsMessage::TruncationStatus,
        type: HubspotSDK::Conversations::PublicConversationsMessage::Type,
        in_reply_to_id: String | nil,
        rich_text: String | nil,
        status: HubspotSDK::Conversations::PublicMessageStatus | nil,
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
      response => HubspotSDK::Conversations::PublicConversationsMessage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        attachments: ^(HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::PublicConversationsMessage::Attachment]),
        channel_account_id: String,
        channel_id: String,
        client: HubspotSDK::Conversations::PublicClient,
        conversations_thread_id: String,
        created_at: Time,
        created_by: String,
        direction: HubspotSDK::Conversations::PublicConversationsMessage::Direction,
        recipients: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicRecipient]),
        senders: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicSender]),
        text: String,
        truncation_status: HubspotSDK::Conversations::PublicConversationsMessage::TruncationStatus,
        type: HubspotSDK::Conversations::PublicConversationsMessage::Type,
        in_reply_to_id: String | nil,
        rich_text: String | nil,
        status: HubspotSDK::Conversations::PublicMessageStatus | nil,
        subject: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.conversations.custom_channels.messages.get("messageId", channel_id: 0)

    assert_pattern do
      response => HubspotSDK::Conversations::PublicConversationsMessage
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        attachments: ^(HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::PublicConversationsMessage::Attachment]),
        channel_account_id: String,
        channel_id: String,
        client: HubspotSDK::Conversations::PublicClient,
        conversations_thread_id: String,
        created_at: Time,
        created_by: String,
        direction: HubspotSDK::Conversations::PublicConversationsMessage::Direction,
        recipients: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicRecipient]),
        senders: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicSender]),
        text: String,
        truncation_status: HubspotSDK::Conversations::PublicConversationsMessage::TruncationStatus,
        type: HubspotSDK::Conversations::PublicConversationsMessage::Type,
        in_reply_to_id: String | nil,
        rich_text: String | nil,
        status: HubspotSDK::Conversations::PublicMessageStatus | nil,
        subject: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
