# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::ThreadsTest < HubspotSDK::Test::ResourceTest
  def test_update
    skip("Prism tests are disabled")

    response = @hub_spot.conversations.threads.update("threadId")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicThread
    end

    assert_pattern do
      response => {
        id: String,
        associated_contact_id: String,
        created_at: Time,
        inbox_id: String,
        original_channel_account_id: String,
        original_channel_id: String,
        spam: HubspotSDK::Internal::Type::Boolean,
        status: HubspotSDK::Conversations::PublicThread::Status,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        assigned_to: String | nil,
        closed_at: Time | nil,
        latest_message_received_timestamp: Time | nil,
        latest_message_sent_timestamp: Time | nil,
        latest_message_timestamp: Time | nil,
        thread_associations: HubspotSDK::Conversations::PublicThreadAssociations | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.conversations.threads.list

    assert_pattern do
      response => HubspotSDK::Conversations::CollectionResponsePublicThreadForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicThread]),
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hub_spot.conversations.threads.delete("threadId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hub_spot.conversations.threads.get("threadId")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicThread
    end

    assert_pattern do
      response => {
        id: String,
        associated_contact_id: String,
        created_at: Time,
        inbox_id: String,
        original_channel_account_id: String,
        original_channel_id: String,
        spam: HubspotSDK::Internal::Type::Boolean,
        status: HubspotSDK::Conversations::PublicThread::Status,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        assigned_to: String | nil,
        closed_at: Time | nil,
        latest_message_received_timestamp: Time | nil,
        latest_message_sent_timestamp: Time | nil,
        latest_message_timestamp: Time | nil,
        thread_associations: HubspotSDK::Conversations::PublicThreadAssociations | nil
      }
    end
  end
end
