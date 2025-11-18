# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Automation::Sequences::EnrollmentsTest < HubspotSDK::Test::ResourceTest
  def test_enroll_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.automation.sequences.enrollments.enroll(
        user_id: "userId",
        contact_id: "contactId",
        sender_email: "senderEmail",
        sequence_id: "sequenceId"
      )

    assert_pattern do
      response => HubspotSDK::Automation::PublicSequenceEnrollmentLiteResponse
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

  def test_get_by_contact_id
    skip("Prism tests are disabled")

    response = @hubspot.automation.sequences.enrollments.get_by_contact_id("contactId")

    assert_pattern do
      response => HubspotSDK::Automation::PublicSequenceEnrollmentResponse
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
