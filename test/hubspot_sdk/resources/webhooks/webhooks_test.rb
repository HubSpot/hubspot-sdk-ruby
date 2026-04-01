# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Webhooks::WebhooksTest < HubspotSDK::Test::ResourceTest
  def test_create_crm_snapshot_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks.webhooks.create_crm_snapshot(
        snapshot_requests: [{objectId: 0, objectTypeId: "objectTypeId", portalId: 0, properties: ["string"]}]
      )

    assert_pattern do
      response => HubspotSDK::Webhooks::CrmObjectSnapshotBatchResponse
    end

    assert_pattern do
      response => {
        snapshot_responses: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::CrmObjectSnapshotResponse])
      }
    end
  end

  def test_create_journal_subscription_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks.webhooks.create_journal_subscription(
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
      response => HubspotSDK::Webhooks::SubscriptionResponse1
    end

    assert_pattern do
      response => {
        id: Integer,
        actions: ^(HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Webhooks::SubscriptionResponse1::Action]),
        app_id: Integer,
        created_at: Time,
        object_type_id: String,
        subscription_type: HubspotSDK::Webhooks::SubscriptionResponse1::SubscriptionType,
        updated_at: Time,
        action_overrides: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Webhooks::ActionOverrideRequest]) | nil,
        associated_object_type_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        created_by: Integer | nil,
        deleted_at: Time | nil,
        list_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]) | nil,
        object_ids: ^(HubspotSDK::Internal::Type::ArrayOf[Integer]) | nil,
        portal_id: Integer | nil,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_create_subscription_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks.webhooks.create_subscription(
        0,
        active: true,
        event_type: :"company.associationChange"
      )

    assert_pattern do
      response => HubspotSDK::Webhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubspotSDK::Webhooks::SubscriptionResponse::EventType,
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
      @hubspot.webhooks.webhooks.create_subscription_filter(
        filter: {conditions: [{filterType: :CRM_OBJECT_PROPERTY, operator: :CONTAINS, property: "property"}]},
        subscription_id: 0
      )

    assert_pattern do
      response => HubspotSDK::Webhooks::FilterCreateResponse
    end

    assert_pattern do
      response => {
        filter_id: Integer
      }
    end
  end

  def test_delete_journal_subscription
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.delete_journal_subscription(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_portal_subscriptions
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.delete_portal_subscriptions(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_settings
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.delete_settings(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_subscription_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.delete_subscription(0, app_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_subscription_filter
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.delete_subscription_filter(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get_journal_earliest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_journal_earliest

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_journal_latest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_journal_latest

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_journal_next_by_offset
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_journal_next_by_offset("offset")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_journal_status
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_journal_status("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => HubspotSDK::Webhooks::SnapshotStatusResponse
    end

    assert_pattern do
      response => {
        id: String,
        initiated_at: Integer,
        status: HubspotSDK::Webhooks::SnapshotStatusResponse::Status,
        completed_at: Integer | nil,
        error_code: HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode | nil,
        message: String | nil
      }
    end
  end

  def test_get_local_journal_earliest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_local_journal_earliest

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_local_journal_latest
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_local_journal_latest

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_local_journal_next_by_offset
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_local_journal_next_by_offset("offset")

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_local_journal_status
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_local_journal_status("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => HubspotSDK::Webhooks::SnapshotStatusResponse
    end

    assert_pattern do
      response => {
        id: String,
        initiated_at: Integer,
        status: HubspotSDK::Webhooks::SnapshotStatusResponse::Status,
        completed_at: Integer | nil,
        error_code: HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode | nil,
        message: String | nil
      }
    end
  end

  def test_get_settings
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_settings(0)

    assert_pattern do
      response => HubspotSDK::Webhooks::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        target_url: String,
        throttling: HubspotSDK::Webhooks::ThrottlingSettings,
        updated_at: Time | nil
      }
    end
  end

  def test_get_subscription_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_subscription(0, app_id: 0)

    assert_pattern do
      response => HubspotSDK::Webhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubspotSDK::Webhooks::SubscriptionResponse::EventType,
        event_type_name: String | nil,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_get_subscription_filter
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_subscription_filter(0)

    assert_pattern do
      response => HubspotSDK::Webhooks::FilterResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        created_at: Integer,
        filter: HubspotSDK::Webhooks::Filter
      }
    end
  end

  def test_get_subscription_filter_for_subscription
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.get_subscription_filter_for_subscription(0)

    assert_pattern do
      response => ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::FilterResponse])
    end
  end

  def test_list_journal_subscriptions
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.list_journal_subscriptions

    assert_pattern do
      response => HubspotSDK::Webhooks::CollectionResponseSubscriptionResponseNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::SubscriptionResponse1])
      }
    end
  end

  def test_list_subscriptions
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.list_subscriptions(0)

    assert_pattern do
      response => HubspotSDK::Webhooks::SubscriptionListResponse
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::SubscriptionResponse])
      }
    end
  end

  def test_update_settings_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks.webhooks.update_settings(
        0,
        target_url: "targetUrl",
        throttling: {maxConcurrentRequests: 0}
      )

    assert_pattern do
      response => HubspotSDK::Webhooks::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        target_url: String,
        throttling: HubspotSDK::Webhooks::ThrottlingSettings,
        updated_at: Time | nil
      }
    end
  end

  def test_update_subscription_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks.webhooks.update_subscription(0, app_id: 0)

    assert_pattern do
      response => HubspotSDK::Webhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubspotSDK::Webhooks::SubscriptionResponse::EventType,
        event_type_name: String | nil,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
