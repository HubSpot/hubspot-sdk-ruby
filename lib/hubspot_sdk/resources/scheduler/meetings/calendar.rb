# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        class Calendar
          # @overload create(associations:, email_reminder_schedule:, properties:, timezone:, request_options: {})
          #
          # @param associations [Array<HubspotSDK::Models::Scheduler::ExternalAssociationCreateRequest>]
          # @param email_reminder_schedule [HubspotSDK::Models::Scheduler::ExternalEmailReminderSchedule]
          # @param properties [HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties]
          # @param timezone [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::ExternalCalenderMeetingEventResponse]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::CalendarCreateParams
          def create(params)
            parsed, options = HubspotSDK::Scheduler::Meetings::CalendarCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "scheduler/v3/meetings/calendar",
              body: parsed,
              model: HubspotSDK::Scheduler::ExternalCalenderMeetingEventResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
