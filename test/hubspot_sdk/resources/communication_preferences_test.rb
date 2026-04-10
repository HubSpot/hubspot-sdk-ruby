# frozen_string_literal: true

require_relative "../test_helper"

class HubSpotSDK::Test::Resources::CommunicationPreferencesTest < HubSpotSDK::Test::ResourceTest
  def test_generate_links_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.communication_preferences.generate_links(
        channel: :EMAIL,
        subscriber_id_string: "subscriberIdString"
      )

    assert_pattern do
      response => HubSpotSDK::CommunicationPreferences::LinkGenerationResponse
    end

    assert_pattern do
      response => {
        manage_preferences_url: String,
        subscriber_id_string: String,
        unsubscribe_all_url: String,
        unsubscribe_single_url: String | nil
      }
    end
  end

  def test_get_statuses_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.communication_preferences.get_statuses("subscriberIdString", channel: :EMAIL)

    assert_pattern do
      response => HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicStatus]),
        started_at: Time,
        status: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get_unsubscribe_all_status_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.communication_preferences.get_unsubscribe_all_status("subscriberIdString", channel: :EMAIL)

    assert_pattern do
      response => HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicWideStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicWideStatus]),
        started_at: Time,
        status: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicWideStatus::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_unsubscribe_all_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.communication_preferences.unsubscribe_all("subscriberIdString", channel: :EMAIL)

    assert_pattern do
      response => HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicStatus]),
        started_at: Time,
        status: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_update_status_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.communication_preferences.update_status(
        "subscriberIdString",
        channel: :EMAIL,
        status_state: :NOT_SPECIFIED,
        subscription_id: 0
      )

    assert_pattern do
      response => HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicStatus]),
        started_at: Time,
        status: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
