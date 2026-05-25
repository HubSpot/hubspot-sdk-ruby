# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::WebhooksJournal::SubscriptionsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.webhooks_journal.subscriptions.create(
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
      response => HubSpotSDK::WebhooksJournal::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        actions: ^(HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action]),
        app_id: Integer,
        created_at: Time,
        object_type_id: String,
        subscription_type: HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType,
        updated_at: Time,
        action_overrides: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::ActionOverrideRequest]) | nil,
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

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.subscriptions.list

    assert_pattern do
      response => HubSpotSDK::WebhooksJournal::CollectionResponseSubscriptionResponseNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::WebhooksJournal::SubscriptionResponse])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.subscriptions.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_for_portal
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.subscriptions.delete_for_portal(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.webhooks_journal.subscriptions.get(0)

    assert_pattern do
      response => HubSpotSDK::WebhooksJournal::SubscriptionResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        actions: ^(HubSpotSDK::Internal::Type::ArrayOf[enum: HubSpotSDK::WebhooksJournal::SubscriptionResponse::Action]),
        app_id: Integer,
        created_at: Time,
        object_type_id: String,
        subscription_type: HubSpotSDK::WebhooksJournal::SubscriptionResponse::SubscriptionType,
        updated_at: Time,
        action_overrides: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::ActionOverrideRequest]) | nil,
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
end
