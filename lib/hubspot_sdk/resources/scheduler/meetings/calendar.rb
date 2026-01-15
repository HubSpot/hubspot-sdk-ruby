# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        class Calendar
          # @overload create(organizer_user_id:, associations:, email_reminder_schedule:, properties:, timezone:, request_options: {})
          #
          # @param organizer_user_id [String] Query param
          #
          # @param associations [Array<HubspotSDK::Models::Scheduler::ExternalAssociationCreateRequest>] Body param
          #
          # @param email_reminder_schedule [HubspotSDK::Models::Scheduler::ExternalEmailReminderSchedule] Body param
          #
          # @param properties [HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties] Body param
          #
          # @param timezone [String] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::ExternalCalenderMeetingEventResponse]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::CalendarCreateParams
          def create(params)
            parsed, options = HubspotSDK::Scheduler::Meetings::CalendarCreateParams.dump_request(params)
            query_params = [:organizer_user_id]
            @client.request(
              method: :post,
              path: "scheduler/v3/meetings/calendar",
              query: parsed.slice(*query_params).transform_keys(organizer_user_id: "organizerUserId"),
              body: parsed.except(*query_params),
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
