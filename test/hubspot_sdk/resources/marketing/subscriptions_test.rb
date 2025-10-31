# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Marketing::SubscriptionsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.marketing.subscriptions.list

    assert_pattern do
      response => HubspotSDK::Marketing::SubscriptionDefinitionsResponse
    end

    assert_pattern do
      response => {
        subscription_definitions: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SubscriptionDefinition])
      }
    end
  end

  def test_get_email_status
    skip("Prism tests are disabled")

    response = @hubspot.marketing.subscriptions.get_email_status("emailAddress")

    assert_pattern do
      response => HubspotSDK::Marketing::PublicSubscriptionStatusesResponse
    end

    assert_pattern do
      response => {
        recipient: String,
        subscription_statuses: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicSubscriptionStatus])
      }
    end
  end

  def test_subscribe_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.subscriptions.subscribe(
        email_address: "emailAddress",
        subscription_id: "subscriptionId"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::PublicSubscriptionStatus
    end

    assert_pattern do
      response => {
        id: String,
        description: String,
        name: String,
        source_of_status: HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus,
        status: HubspotSDK::Marketing::PublicSubscriptionStatus::Status,
        brand_id: Integer | nil,
        legal_basis: HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis | nil,
        legal_basis_explanation: String | nil,
        preference_group_name: String | nil
      }
    end
  end

  def test_unsubscribe_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.marketing.subscriptions.unsubscribe(
        email_address: "emailAddress",
        subscription_id: "subscriptionId"
      )

    assert_pattern do
      response => HubspotSDK::Marketing::PublicSubscriptionStatus
    end

    assert_pattern do
      response => {
        id: String,
        description: String,
        name: String,
        source_of_status: HubspotSDK::Marketing::PublicSubscriptionStatus::SourceOfStatus,
        status: HubspotSDK::Marketing::PublicSubscriptionStatus::Status,
        brand_id: Integer | nil,
        legal_basis: HubspotSDK::Marketing::PublicSubscriptionStatus::LegalBasis | nil,
        legal_basis_explanation: String | nil,
        preference_group_name: String | nil
      }
    end
  end
end
