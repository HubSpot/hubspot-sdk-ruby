# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::InboxesTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.conversations.inboxes.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Conversations::PublicInbox
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        name: String,
        type: String,
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.conversations.inboxes.get(0)

    assert_pattern do
      response => HubspotSDK::Conversations::PublicInbox
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        name: String,
        type: String,
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end
end
