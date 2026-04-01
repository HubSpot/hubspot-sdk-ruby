# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Webhooks::Webhooks::BatchTest < HubspotSDK::Test::ResourceTest
  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.get(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
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
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
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
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_local_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.get_local(inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_local_earliest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.get_local_earliest(1)

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_local_latest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.get_local_latest(1)

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_local_next_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.get_local_next(1, offset: "offset")

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
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
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_subscriptions_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.batch.update_subscriptions(0, inputs: [{id: 0, active: true}])

    assert_pattern do
      response => HubspotSDK::Webhooks::BatchResponseSubscriptionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::SubscriptionResponse]),
        started_at: Time,
        status: HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
