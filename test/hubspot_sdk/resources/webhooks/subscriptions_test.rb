# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Webhooks::SubscriptionsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.webhooks.subscriptions.create(0, event_type: :"contact.propertyChange")

    assert_pattern do
      response => HubspotSDK::Webhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubspotSDK::Webhooks::SubscriptionResponse::EventType,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.webhooks.subscriptions.update(0, app_id: 0)

    assert_pattern do
      response => HubspotSDK::Webhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubspotSDK::Webhooks::SubscriptionResponse::EventType,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.webhooks.subscriptions.list(0)

    assert_pattern do
      response => HubspotSDK::Webhooks::SubscriptionListResponse
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::SubscriptionResponse])
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.webhooks.subscriptions.delete(0, app_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.webhooks.subscriptions.get(0, app_id: 0)

    assert_pattern do
      response => HubspotSDK::Webhooks::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: String,
        active: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        event_type: HubspotSDK::Webhooks::SubscriptionResponse::EventType,
        object_type_id: String | nil,
        property_name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_batch_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.webhooks.subscriptions.update_batch(0, inputs: [{id: 0, active: true}])

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
