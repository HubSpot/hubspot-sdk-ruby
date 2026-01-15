# typed: strong

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        class Calendar
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
            # Body param
            timezone:,
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
