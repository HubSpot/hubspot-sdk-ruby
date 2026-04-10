# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Scheduler
      class Meetings
        class Advanced
          # Create a new calendar event and meeting object by providing the necessary
          # details such as associations, email reminders, meeting object properties, and
          # timezone.
          #
          # @overload create(organizer_user_id:, associations:, email_reminder_schedule:, properties:, timezone:, request_options: {})
          #
          # @param organizer_user_id [String] Query param
          #
          # @param associations [Array<HubSpotSDK::Models::Scheduler::ExternalAssociationCreateRequest>] Body param
          #
          # @param email_reminder_schedule [HubSpotSDK::Models::Scheduler::ExternalEmailReminderSchedule] Body param
          #
          # @param properties [HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateProperties] Body param
          #
          # @param timezone [String] Body param: The timezone property that will be set on the meeting event.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Scheduler::ExternalCalenderMeetingEventResponse]
          #
          # @see HubSpotSDK::Models::Scheduler::Meetings::AdvancedCreateParams
          def create(params)
            query_params = [:organizer_user_id]
            parsed, options = HubSpotSDK::Scheduler::Meetings::AdvancedCreateParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "scheduler/2026-03/meetings/calendar",
              query: query.transform_keys(organizer_user_id: "organizerUserId"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::Scheduler::ExternalCalenderMeetingEventResponse,
              options: options
            )
          end

          # Book a meeting for a specified meeting page.
          #
          # @overload book(duration:, email:, first_name:, form_fields:, last_name:, legal_consent_responses:, likely_available_user_ids:, slug:, start_time:, locale: nil, timezone: nil, request_options: {})
          #
          # @param duration [Integer] The duration of the meeting in milliseconds.
          #
          # @param email [String] The email address of the person booking the meeting.
          #
          # @param first_name [String] The first name of the person booking the meeting.
          #
          # @param form_fields [Array<HubSpotSDK::Models::Scheduler::ExternalBookingFormField>]
          #
          # @param last_name [String] The last name of the person booking the meeting.
          #
          # @param legal_consent_responses [Array<HubSpotSDK::Models::Scheduler::ExternalLegalConsentResponse>]
          #
          # @param likely_available_user_ids [Array<String>]
          #
          # @param slug [String] The unique path identifier for the meeting page.
          #
          # @param start_time [Time] The date and time when the meeting is scheduled to start, in ISO 8601 format.
          #
          # @param locale [String] The locale used for formatting dates and times in the meeting booking.
          #
          # @param timezone [String] The timezone in which the meeting is scheduled.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Scheduler::ExternalMeetingBookingResponse]
          #
          # @see HubSpotSDK::Models::Scheduler::Meetings::AdvancedBookParams
          def book(params)
            parsed, options = HubSpotSDK::Scheduler::Meetings::AdvancedBookParams.dump_request(params)
            @client.request(
              method: :post,
              path: "scheduler/2026-03/meetings/meeting-links/book",
              body: parsed,
              model: HubSpotSDK::Scheduler::ExternalMeetingBookingResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
