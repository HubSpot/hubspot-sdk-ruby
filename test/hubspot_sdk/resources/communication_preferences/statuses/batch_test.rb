# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CommunicationPreferences::Statuses::BatchTest < HubspotSDK::Test::ResourceTest
  def test_get_unsubscribe_all_statuses_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.communication_preferences.statuses.batch.get_unsubscribe_all_statuses(
        channel: :EMAIL,
        inputs: ["string"]
      )

    assert_pattern do
      response => HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicWideStatusBulkResponse]),
        started_at: Time,
        status: HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_read_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.communication_preferences.statuses.batch.read(channel: :EMAIL, inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicStatusBulkResponse]),
        started_at: Time,
        status: HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_unsubscribe_all_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.communication_preferences.statuses.batch.unsubscribe_all(channel: :EMAIL, inputs: ["string"])

    assert_pattern do
      response => HubspotSDK::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicBulkOptOutFromAllResponse]),
        started_at: Time,
        status: HubspotSDK::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_statuses_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.communication_preferences.statuses.batch.update_statuses(
        inputs: [
          {
            channel: :EMAIL,
            statusState: :NOT_SPECIFIED,
            subscriberIdString: "subscriberIdString",
            subscriptionId: 0
          }
        ]
      )

    assert_pattern do
      response => HubspotSDK::CommunicationPreferences::BatchResponsePublicStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicStatus]),
        started_at: Time,
        status: HubspotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
