# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::MessagesTest < HubspotSDK::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @hubspot.conversations.messages.create("threadId")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicMessage
    end

    assert_pattern do
      case response
      in HubspotSDK::Conversations::PublicConversationsMessage
      in HubspotSDK::Conversations::PublicComment
      in HubspotSDK::Conversations::PublicWelcomeMessage
      in HubspotSDK::Conversations::PublicAssignmentMessage
      in HubspotSDK::Conversations::PublicThreadStatusChange
      in HubspotSDK::Conversations::PublicThreadInboxChange
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.conversations.messages.list("threadId")

    assert_pattern do
      response => HubspotSDK::Conversations::CollectionResponsePublicMessageForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::CollectionResponsePublicMessageForwardPaging::Result]),
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.conversations.messages.get("messageId", thread_id: "threadId")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicMessage
    end

    assert_pattern do
      case response
      in HubspotSDK::Conversations::PublicConversationsMessage
      in HubspotSDK::Conversations::PublicComment
      in HubspotSDK::Conversations::PublicWelcomeMessage
      in HubspotSDK::Conversations::PublicAssignmentMessage
      in HubspotSDK::Conversations::PublicThreadStatusChange
      in HubspotSDK::Conversations::PublicThreadInboxChange
      end
    end
  end

  def test_get_original_content_required_params
    skip("Prism tests are disabled")

    response = @hubspot.conversations.messages.get_original_content("messageId", thread_id: "threadId")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicMessageContent
    end

    assert_pattern do
      response => {
        rich_text: String | nil,
        text: String | nil
      }
    end
  end
end
