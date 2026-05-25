# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::WebhooksJournal::JournalLocalTest < HubSpotSDK::Test::ResourceTest
  def test_get_earliest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.journal_local.get_earliest

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_latest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.journal_local.get_latest

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_next_from_offset
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.journal_local.get_next_from_offset("offset")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_status
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.journal_local.get_status("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => HubSpotSDK::SnapshotStatusResponse
    end

    assert_pattern do
      response => {
        id: String,
        initiated_at: Integer,
        status: HubSpotSDK::SnapshotStatusResponse::Status,
        completed_at: Integer | nil,
        error_code: HubSpotSDK::SnapshotStatusResponse::ErrorCode | nil,
        message: String | nil
      }
    end
  end
end
