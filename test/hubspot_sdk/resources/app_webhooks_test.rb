# frozen_string_literal: true

require_relative "../test_helper"

class HubspotSDK::Test::Resources::AppWebhooksTest < HubspotSDK::Test::ResourceTest
  def test_batch_update_subscriptions_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.app_webhooks.batch_update_subscriptions(0, inputs: [{id: 0, active: true}])

    assert_pattern do
      response => HubspotSDK::AppWebhooks::BatchResponseSubscriptionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AppWebhooks::SubscriptionResponse]),
        started_at: Time,
        status: HubspotSDK::AppWebhooks::BatchResponseSubscriptionResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_create_subscription_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.app_webhooks.create_subscription(0, active: true, event_type: :"company.associationChange")

    assert_pattern do
      response => HubspotSDK::AppWebhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubspotSDK::AppWebhooks::SubscriptionResponse::EventType,
        event_type_name: String | nil,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_settings
    skip("Mock server tests are disabled")

    response = @hubspot.app_webhooks.delete_settings(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_subscription_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.app_webhooks.delete_subscription(0, app_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_get_settings
    skip("Mock server tests are disabled")

    response = @hubspot.app_webhooks.get_settings(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        height: Integer,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        name: String,
        supports_custom_objects: HubspotSDK::Internal::Type::Boolean,
        supports_inbound_calling: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String,
        uses_calling_window: HubspotSDK::Internal::Type::Boolean,
        uses_remote: HubspotSDK::Internal::Type::Boolean,
        width: Integer
      }
    end
  end

  def test_get_subscription_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.app_webhooks.get_subscription(0, app_id: 0)

    assert_pattern do
      response => HubspotSDK::AppWebhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubspotSDK::AppWebhooks::SubscriptionResponse::EventType,
        event_type_name: String | nil,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list_subscriptions
    skip("Mock server tests are disabled")

    response = @hubspot.app_webhooks.list_subscriptions(0)

    assert_pattern do
      response => HubspotSDK::AppWebhooks::SubscriptionListResponse
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AppWebhooks::SubscriptionResponse])
      }
    end
  end

  def test_update_settings_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.app_webhooks.update_settings(
        0,
        target_url: "targetUrl",
        throttling: {maxConcurrentRequests: 0}
      )

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        height: Integer,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        name: String,
        supports_custom_objects: HubspotSDK::Internal::Type::Boolean,
        supports_inbound_calling: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String,
        uses_calling_window: HubspotSDK::Internal::Type::Boolean,
        uses_remote: HubspotSDK::Internal::Type::Boolean,
        width: Integer
      }
    end
  end

  def test_update_subscription_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.app_webhooks.update_subscription(0, app_id: 0)

    assert_pattern do
      response => HubspotSDK::AppWebhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubspotSDK::AppWebhooks::SubscriptionResponse::EventType,
        event_type_name: String | nil,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
