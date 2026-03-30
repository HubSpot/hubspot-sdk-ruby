# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Webhooks::Webhooks::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.create(0, inputs: [{id: 0, active: true}])

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseSubscriptionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::SubscriptionResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_earliest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.get_earliest(1)

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_latest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.get_latest(1)

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_next_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.get_next(1, offset: "offset")

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_read_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.read(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
