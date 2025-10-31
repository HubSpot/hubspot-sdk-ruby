# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Scheduler::Meetings::CalendarTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.scheduler.meetings.calendar.create(
        associations: [
          {
            to: {id: "37295"},
            types: [{associationCategory: :HUBSPOT_DEFINED, associationTypeId: 0}]
          }
        ],
        email_reminder_schedule: {
          reminders: [{numberOfTimeUnits: 0, timeUnit: "timeUnit"}],
          shouldIncludeInviteDescription: true
        },
        properties: {
          hs_meeting_end_time: "2019-12-27T18:11:19.117Z",
          hs_meeting_outcome: "hs_meeting_outcome",
          hs_meeting_start_time: "2019-12-27T18:11:19.117Z",
          hs_meeting_title: "hs_meeting_title",
          hs_timestamp: "2019-12-27T18:11:19.117Z"
        },
        timezone: "timezone"
      )

    assert_pattern do
      response => HubspotSDK::Scheduler::ExternalCalenderMeetingEventResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        last_updated_at: Time,
        properties: HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties
      }
    end
  end
end
