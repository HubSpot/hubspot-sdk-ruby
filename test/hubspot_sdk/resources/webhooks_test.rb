# frozen_string_literal: true

require_relative "../test_helper"

class HubSpotSDK::Test::Resources::WebhooksTest < HubSpotSDK::Test::ResourceTest
  def test_create_crm_snapshot_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks.create_crm_snapshot(
        snapshot_requests: [{objectId: 0, objectTypeId: "objectTypeId", portalId: 0, properties: ["string"]}]
      )

    assert_pattern do
      response => HubSpotSDK::Webhooks::CrmObjectSnapshotBatchResponse
    end

    assert_pattern do
      response => {
        snapshot_responses: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::CrmObjectSnapshotResponse])
      }
    end
  end

  def test_create_journal_subscription_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks.create_journal_subscription(
        subscription_upsert_request: {
          actions: [:CREATE],
          objectIds: [0],
          objectTypeId: "objectTypeId",
          portalId: 0,
          properties: ["string"],
          subscriptionType: :OBJECT
        }
      )

    assert_pattern do
      response => HubSpotSDK::Webhooks::SubscriptionResponse1
    end

    assert_pattern do
      response => {
        id: Integer,
        actions: ^(HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::Webhooks::SubscriptionResponse1::Action]),
        app_id: Integer,
        created_at: Time,
        object_type_id: String,
        subscription_type: HubSpotSDK::Webhooks::SubscriptionResponse1::SubscriptionType,
        updated_at: Time,
        action_overrides: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Webhooks::ActionOverrideRequest]) | nil,
        associated_object_type_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil,
        created_by: Integer | nil,
        deleted_at: Time | nil,
        list_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[Integer]) | nil,
        object_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[Integer]) | nil,
        portal_id: Integer | nil,
        properties: ^(HubSpotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_create_subscription_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks.create_subscription(0, active: true, event_type: :"company.associationChange")

    assert_pattern do
      response => HubSpotSDK::Webhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubSpotSDK::Webhooks::SubscriptionResponse::EventType,
        event_type_name: String | nil,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_create_subscription_filter_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks.create_subscription_filter(
        filter: {conditions: [{filterType: :CRM_OBJECT_PROPERTY, operator: :CONTAINS, property: "property"}]},
        subscription_id: 0
      )

    assert_pattern do
      response => HubSpotSDK::Webhooks::FilterCreateResponse
    end

    assert_pattern do
      response => {
        filter_id: Integer
      }
    end
  end

  def test_create_subscriptions_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.create_subscriptions_batch(0, inputs: [{id: 0, active: true}])

    assert_pattern do
      response => HubSpotSDK::Webhooks::BatchResponseSubscriptionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse]),
        started_at: Time,
        status: HubSpotSDK::Webhooks::BatchResponseSubscriptionResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_delete_journal_subscription
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.delete_journal_subscription(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_portal_subscriptions
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.delete_portal_subscriptions(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_settings
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.delete_settings(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_subscription_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.delete_subscription(0, app_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_subscription_filter
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.delete_subscription_filter(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get_earliest_journal
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_earliest_journal

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_earliest_journal_batch
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_earliest_journal_batch(1)

    assert_pattern do
      response => HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_earliest_local_journal
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_earliest_local_journal

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_earliest_local_journal_batch
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_earliest_local_journal_batch(1)

    assert_pattern do
      response => HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_journal_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_journal_batch(inputs: ["string"])

    assert_pattern do
      response => HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_journal_batch_after_offset_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_journal_batch_after_offset(1, offset: "offset")

    assert_pattern do
      response => HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_journal_status
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_journal_status("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => HubSpotSDK::Webhooks::SnapshotStatusResponse
    end

    assert_pattern do
      response => {
        id: String,
        initiated_at: Integer,
        status: HubSpotSDK::Webhooks::SnapshotStatusResponse::Status,
        completed_at: Integer | nil,
        error_code: HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode | nil,
        message: String | nil
      }
    end
  end

  def test_get_latest_journal
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_latest_journal

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_latest_journal_batch
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_latest_journal_batch(1)

    assert_pattern do
      response => HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_latest_local_journal
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_latest_local_journal

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_latest_local_journal_batch
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_latest_local_journal_batch(1)

    assert_pattern do
      response => HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_local_journal_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_local_journal_batch(inputs: ["string"])

    assert_pattern do
      response => HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_local_journal_batch_after_offset_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_local_journal_batch_after_offset(1, offset: "offset")

    assert_pattern do
      response => HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::JournalFetchResponse]),
        started_at: Time,
        status: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_local_journal_status
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_local_journal_status("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => HubSpotSDK::Webhooks::SnapshotStatusResponse
    end

    assert_pattern do
      response => {
        id: String,
        initiated_at: Integer,
        status: HubSpotSDK::Webhooks::SnapshotStatusResponse::Status,
        completed_at: Integer | nil,
        error_code: HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode | nil,
        message: String | nil
      }
    end
  end

  def test_get_next_journal_after_offset
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_next_journal_after_offset("offset")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_next_local_journal_after_offset
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_next_local_journal_after_offset("offset")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_settings
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_settings(0)

    assert_pattern do
      response => HubSpotSDK::Webhooks::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        target_url: String,
        throttling: HubSpotSDK::Webhooks::ThrottlingSettings,
        updated_at: Time | nil
      }
    end
  end

  def test_get_subscription_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_subscription(0, app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Webhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubSpotSDK::Webhooks::SubscriptionResponse::EventType,
        event_type_name: String | nil,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get_subscription_filter
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_subscription_filter(0)

    assert_pattern do
      response => HubSpotSDK::Webhooks::FilterResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        created_at: Integer,
        filter: HubSpotSDK::Webhooks::Filter
      }
    end
  end

  def test_get_subscription_filters
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.get_subscription_filters(0)

    assert_pattern do
      response => ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::FilterResponse])
    end
  end

  def test_list_journal_subscriptions
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.list_journal_subscriptions

    assert_pattern do
      response => HubSpotSDK::Webhooks::CollectionResponseSubscriptionResponseNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse1])
      }
    end
  end

  def test_list_subscriptions
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.list_subscriptions(0)

    assert_pattern do
      response => HubSpotSDK::Webhooks::SubscriptionListResponse
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse])
      }
    end
  end

  def test_update_settings_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks.update_settings(0, target_url: "targetUrl", throttling: {maxConcurrentRequests: 0})

    assert_pattern do
      response => HubSpotSDK::Webhooks::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        target_url: String,
        throttling: HubSpotSDK::Webhooks::ThrottlingSettings,
        updated_at: Time | nil
      }
    end
  end

  def test_update_subscription_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.update_subscription(0, app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Webhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubSpotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubSpotSDK::Webhooks::SubscriptionResponse::EventType,
        event_type_name: String | nil,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
