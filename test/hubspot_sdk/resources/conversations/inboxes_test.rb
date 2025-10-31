# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Conversations::InboxesTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.conversations.inboxes.list

    assert_pattern do
      response => HubspotSDK::Conversations::CollectionResponseWithTotalPublicInboxForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::PublicInbox]),
        total: Integer,
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.conversations.inboxes.get("inboxId")

    assert_pattern do
      response => HubspotSDK::Conversations::PublicInbox
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        type: String,
        id: String | nil,
        archived_at: Time | nil,
        created_at: Time | nil,
        name: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
