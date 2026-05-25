# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::WebhooksJournal::JournalLocal::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.journal_local.batch.get(inputs: ["string"])

    assert_pattern do
      response => HubSpotSDK::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_earliest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.journal_local.batch.get_earliest(1)

    assert_pattern do
      response => HubSpotSDK::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_from_offset_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.journal_local.batch.get_from_offset(1, offset: "offset")

    assert_pattern do
      response => HubSpotSDK::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
