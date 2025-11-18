# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::ThreadsTest < HubspotSDK::Test::ResourceTest
  def test_update
    skip("Prism tests are disabled")

    response = @hubspot.conversations.threads.update(0)

    assert_pattern do
      response => HubspotSDK::Conversations::PublicThread
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associated_contact_id: String,
        created_at: Time,
        inbox_id: String,
        original_channel_account_id: String,
        original_channel_id: String,
        spam: HubspotSDK::Internal::Type::Boolean,
        status: HubspotSDK::Conversations::PublicThread::Status,
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

    response = @hubspot.conversations.threads.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Conversations::PublicThread
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associated_contact_id: String,
        created_at: Time,
        inbox_id: String,
        original_channel_account_id: String,
        original_channel_id: String,
        spam: HubspotSDK::Internal::Type::Boolean,
        status: HubspotSDK::Conversations::PublicThread::Status,
        assigned_to: String | nil,
        closed_at: Time | nil,
        latest_message_received_timestamp: Time | nil,
        latest_message_sent_timestamp: Time | nil,
        latest_message_timestamp: Time | nil,
        thread_associations: HubspotSDK::Conversations::PublicThreadAssociations | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.conversations.threads.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.conversations.threads.get(0)

    assert_pattern do
      response => HubspotSDK::Conversations::PublicThread
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        associated_contact_id: String,
        created_at: Time,
        inbox_id: String,
        original_channel_account_id: String,
        original_channel_id: String,
        spam: HubspotSDK::Internal::Type::Boolean,
        status: HubspotSDK::Conversations::PublicThread::Status,
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
