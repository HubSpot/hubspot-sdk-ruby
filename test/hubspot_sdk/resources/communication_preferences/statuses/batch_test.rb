# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::CommunicationPreferences::Statuses::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_get_unsubscribe_all_statuses_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.communication_preferences.statuses.batch.get_unsubscribe_all_statuses(
        channel: :EMAIL,
        inputs: ["string"]
      )

    assert_pattern do
      response => HubSpotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicWideStatusBulkResponse]),
        started_at: Time,
        status: HubSpotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_read_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.communication_preferences.statuses.batch.read(channel: :EMAIL, inputs: ["string"])

    assert_pattern do
      response => HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicStatusBulkResponse]),
        started_at: Time,
        status: HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_unsubscribe_all_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.communication_preferences.statuses.batch.unsubscribe_all(channel: :EMAIL, inputs: ["string"])

    assert_pattern do
      response => HubSpotSDK::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicBulkOptOutFromAllResponse]),
        started_at: Time,
        status: HubSpotSDK::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
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
      response => HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicStatus]),
        started_at: Time,
        status: HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
