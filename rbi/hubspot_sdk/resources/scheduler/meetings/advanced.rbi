# typed: strong

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        class Advanced
          # Create a new calendar event and meeting object by providing the necessary
          # details such as associations, email reminders, meeting object properties, and
          # timezone.
          sig do
            params(
              organizer_user_id: String,
              associations:
                T::Array[
                  HubspotSDK::Scheduler::ExternalAssociationCreateRequest::OrHash
                ],
              email_reminder_schedule:
                HubspotSDK::Scheduler::ExternalEmailReminderSchedule::OrHash,
              properties:
                HubspotSDK::Scheduler::ExternalCalendarMeetingEventCreateProperties::OrHash,
              timezone: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Scheduler::ExternalCalenderMeetingEventResponse
            )
          end
          def create(
            # Query param
            organizer_user_id:,
            # Body param
            associations:,
            # Body param
            email_reminder_schedule:,
            # Body param
            properties:,
            # Body param: The timezone property that will be set on the meeting event.
            timezone:,
            request_options: {}
          )
          end

          # Book a meeting for a specified meeting page.
          sig do
            params(
              duration: Integer,
              email: String,
              first_name: String,
              form_fields:
                T::Array[
                  HubspotSDK::Scheduler::ExternalBookingFormField::OrHash
                ],
              last_name: String,
              legal_consent_responses:
                T::Array[
                  HubspotSDK::Scheduler::ExternalLegalConsentResponse::OrHash
                ],
              likely_available_user_ids: T::Array[String],
              slug: String,
              start_time: Time,
              locale: String,
              timezone: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Scheduler::ExternalMeetingBookingResponse)
          end
          def book(
            # The duration of the meeting in milliseconds.
            duration:,
            # The email address of the person booking the meeting.
            email:,
            # The first name of the person booking the meeting.
            first_name:,
            form_fields:,
            # The last name of the person booking the meeting.
            last_name:,
            legal_consent_responses:,
            likely_available_user_ids:,
            # The unique path identifier for the meeting page.
            slug:,
            # The date and time when the meeting is scheduled to start, in ISO 8601 format.
            start_time:,
            # The locale used for formatting dates and times in the meeting booking.
            locale: nil,
            # The timezone in which the meeting is scheduled.
            timezone: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
