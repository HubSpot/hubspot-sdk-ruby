# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Automation::SequencesTest < HubSpotSDK::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.sequences.list(user_id: "userId")

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Automation::PublicSequenceLiteResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        name: String,
        updated_at: Time,
        user_id: String,
        folder_id: String | nil
      }
    end
  end

  def test_create_enrollment_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.automation.sequences.create_enrollment(
        user_id: "userId",
        contact_id: "contactId",
        sender_email: "senderEmail",
        sequence_id: "sequenceId"
      )

    assert_pattern do
      response => HubSpotSDK::Automation::PublicSequenceEnrollmentLiteResponse
    end

    assert_pattern do
      response => {
        id: String,
        enrolled_at: Time,
        to_email: String,
        updated_at: Time
      }
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.automation.sequences.get("sequenceId", user_id: "userId")

    assert_pattern do
      response => HubSpotSDK::Automation::PublicSequenceResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        dependencies: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicSequenceStepDependencyResponse]),
        name: String,
        steps: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicSequenceStepResponse]),
        updated_at: Time,
        user_id: String,
        folder_id: String | nil,
        settings: HubSpotSDK::Automation::PublicSequenceSettingsResponse | nil
      }
    end
  end

  def test_get_enrollment_by_contact_id
    skip("Mock server tests are disabled")

    response = @hubspot.automation.sequences.get_enrollment_by_contact_id("contactId")

    assert_pattern do
      response => HubSpotSDK::Automation::PublicSequenceEnrollmentResponse
    end

    assert_pattern do
      response => {
        id: String,
        enrolled_at: Time,
        enrolled_by: String,
        enrolled_by_email: String,
        sequence_id: String,
        sequence_name: String,
        to_email: String,
        updated_at: Time
      }
    end
  end
end
