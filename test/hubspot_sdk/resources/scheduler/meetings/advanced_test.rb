# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Scheduler::Meetings::AdvancedTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.scheduler.meetings.advanced.create(
        organizer_user_id: "organizerUserId",
        associations: [
          {
            to: {id: "id"},
            types: [{associationCategory: :HUBSPOT_DEFINED, associationTypeId: 0}]
          }
        ],
        email_reminder_schedule: {
          reminders: [{numberOfTimeUnits: 0, timeUnit: :DAYS}],
          shouldIncludeInviteDescription: true
        },
        properties: {
          hs_meeting_end_time: "2019-12-27T18:11:19.117Z",
          hs_meeting_outcome: "hs_meeting_outcome",
          hs_meeting_start_time: "2019-12-27T18:11:19.117Z",
          hs_meeting_title: "hs_meeting_title",
          hs_timestamp: "2019-12-27T18:11:19.117Z",
          hubspot_owner_id: "hubspot_owner_id"
        },
        timezone: "timezone"
      )

    assert_pattern do
      response => HubSpotSDK::Scheduler::ExternalCalenderMeetingEventResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        last_updated_at: Time,
        properties: HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties
      }
    end
  end

  def test_book_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.scheduler.meetings.advanced.book(
        duration: 0,
        email: "email",
        first_name: "firstName",
        form_fields: [{name: "name", value: "value"}],
        last_name: "lastName",
        legal_consent_responses: [{communicationTypeId: "communicationTypeId", consented: true}],
        likely_available_user_ids: ["string"],
        slug: "slug",
        start_time: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => HubSpotSDK::Scheduler::ExternalMeetingBookingResponse
    end

    assert_pattern do
      response => {
        booking_timezone: String,
        calendar_event_id: String,
        contact_id: String,
        duration: Integer,
        end_: Time,
        form_fields: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalValidatedFormField]),
        guest_emails: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        is_offline: HubSpotSDK::Internal::Type::Boolean,
        legal_consent_responses: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalLegalConsentResponse]),
        start: Time,
        subject: String,
        locale: String | nil,
        location: String | nil,
        web_conference_meeting_id: String | nil,
        web_conference_url: String | nil
      }
    end
  end
end
