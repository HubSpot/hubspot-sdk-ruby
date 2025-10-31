# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Marketing::Subscriptions::V4::StatusesTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.subscriptions.v4.statuses.update(
        "subscriberIdString",
        channel: :EMAIL,
        status_state: :SUBSCRIBED,
        subscription_id: 0
      )

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicStatus]),
        started_at: Time,
        status: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.subscriptions.v4.statuses.batch_get(channel: :EMAIL, inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicStatusBulkResponse]),
        started_at: Time,
        status: HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_get_unsubscribe_all_status_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.subscriptions.v4.statuses.batch_get_unsubscribe_all_status(
        channel: :EMAIL,
        inputs: ["string"]
      )

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::BatchResponsePublicWideStatusBulkResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicWideStatusBulkResponse]),
        started_at: Time,
        status: HubspotSDK::Marketing::Subscriptions::BatchResponsePublicWideStatusBulkResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_unsubscribe_all_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.subscriptions.v4.statuses.batch_unsubscribe_all(channel: :EMAIL, inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::BatchResponsePublicBulkOptOutFromAllResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicBulkOptOutFromAllResponse]),
        started_at: Time,
        status: HubspotSDK::Marketing::Subscriptions::BatchResponsePublicBulkOptOutFromAllResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_update_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.subscriptions.v4.statuses.batch_update(
        inputs: [
          {
            channel: :EMAIL,
            statusState: :SUBSCRIBED,
            subscriberIdString: "subscriberIdString",
            subscriptionId: 0
          }
        ]
      )

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicStatus]),
        started_at: Time,
        status: HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatus::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.marketing.subscriptions.v4.statuses.get("subscriberIdString", channel: :EMAIL)

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicStatus]),
        started_at: Time,
        status: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_unsubscribe_all_status_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.subscriptions.v4.statuses.get_unsubscribe_all_status(
        "subscriberIdString",
        channel: :EMAIL
      )

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicWideStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicWideStatus]),
        started_at: Time,
        status: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicWideStatus::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_unsubscribe_all_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.marketing.subscriptions.v4.statuses.unsubscribe_all("subscriberIdString", channel: :EMAIL)

    assert_pattern do
      response => HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicStatus]),
        started_at: Time,
        status: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
