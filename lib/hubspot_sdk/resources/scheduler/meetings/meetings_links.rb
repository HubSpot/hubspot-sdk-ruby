# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        class MeetingsLinks
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Scheduler::Meetings::MeetingsLinkListParams} for more
          # details.
          #
          # Get a paged list meeting scheduling pages
          #
          # @overload list(after: nil, limit: nil, name: nil, organizer_user_id: nil, type: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param name [String] Retrieve scheduling pages with a specified name.
          #
          # @param organizer_user_id [String] Filter the response to scheduling pages created by the specified user.
          #
          # @param type [String] Filter the response to the specific type of meeting.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Scheduler::ExternalLinkMetadata>]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::MeetingsLinkListParams
          def list(params = {})
            parsed, options = HubspotSDK::Scheduler::Meetings::MeetingsLinkListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "scheduler/v3/meetings/meeting-links",
              query: parsed.transform_keys(organizer_user_id: "organizerUserId"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Scheduler::ExternalLinkMetadata,
              options: options
            )
          end

          # Book a meeting for a specified meeting page.
          #
          # @overload book(duration:, email:, first_name:, form_fields:, last_name:, legal_consent_responses:, likely_available_user_ids:, slug:, start_time:, locale: nil, timezone: nil, request_options: {})
          #
          # @param duration [Integer]
          # @param email [String]
          # @param first_name [String]
          # @param form_fields [Array<HubspotSDK::Models::Scheduler::ExternalBookingFormField>]
          # @param last_name [String]
          # @param legal_consent_responses [Array<HubspotSDK::Models::Scheduler::ExternalLegalConsentResponse>]
          # @param likely_available_user_ids [Array<String>]
          # @param slug [String]
          # @param start_time [Time]
          # @param locale [String]
          # @param timezone [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::ExternalMeetingBookingResponse]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::MeetingsLinkBookParams
          def book(params)
            parsed, options = HubspotSDK::Scheduler::Meetings::MeetingsLinkBookParams.dump_request(params)
            @client.request(
              method: :post,
              path: "scheduler/v3/meetings/meeting-links/book",
              body: parsed,
              model: HubspotSDK::Scheduler::ExternalMeetingBookingResponse,
              options: options
            )
          end

          # Get the next availability times for a meeting page.
          #
          # @overload get_availability_by_slug(slug, timezone:, month_offset: nil, request_options: {})
          #
          # @param slug [String] The path for the meeting page that you want the available times for.
          #
          # @param timezone [String] Return times in response based on specified time zone.
          #
          # @param month_offset [Integer] Get times for a different month.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::ExternalLinkAvailabilityAndBusyTimes]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::MeetingsLinkGetAvailabilityBySlugParams
          def get_availability_by_slug(slug, params)
            parsed, options =
              HubspotSDK::Scheduler::Meetings::MeetingsLinkGetAvailabilityBySlugParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["scheduler/v3/meetings/meeting-links/book/availability-page/%1$s", slug],
              query: parsed.transform_keys(month_offset: "monthOffset"),
              model: HubspotSDK::Scheduler::ExternalLinkAvailabilityAndBusyTimes,
              options: options
            )
          end

          # Get details about the initial information necessary for a meeting scheduler.
          #
          # @overload get_booking_info_by_slug(slug, timezone:, request_options: {})
          #
          # @param slug [String] The path to the scheduling page that you want the information for.
          #
          # @param timezone [String] Return times in response based on specified time zone.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::ExternalBookingInfo]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::MeetingsLinkGetBookingInfoBySlugParams
          def get_booking_info_by_slug(slug, params)
            parsed, options =
              HubspotSDK::Scheduler::Meetings::MeetingsLinkGetBookingInfoBySlugParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["scheduler/v3/meetings/meeting-links/book/%1$s", slug],
              query: parsed,
              model: HubspotSDK::Scheduler::ExternalBookingInfo,
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
