# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        class MeetingsLinks
          # Get a paged list meeting scheduling pages
          #
          # @overload list(request_options: {})
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::CollectionResponseWithTotalExternalLinkMetadataForwardPaging]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::MeetingsLinkListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "scheduler/v3/meetings/meeting-links",
              model: HubspotSDK::Scheduler::CollectionResponseWithTotalExternalLinkMetadataForwardPaging,
              options: params[:request_options]
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
          # @overload get_availability_by_slug(slug, request_options: {})
          #
          # @param slug [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::ExternalLinkAvailabilityAndBusyTimes]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::MeetingsLinkGetAvailabilityBySlugParams
          def get_availability_by_slug(slug, params = {})
            @client.request(
              method: :get,
              path: ["scheduler/v3/meetings/meeting-links/book/availability-page/%1$s", slug],
              model: HubspotSDK::Scheduler::ExternalLinkAvailabilityAndBusyTimes,
              options: params[:request_options]
            )
          end

          # Get details about the initial information necessary for a meeting scheduler.
          #
          # @overload get_booking_info_by_slug(slug, request_options: {})
          #
          # @param slug [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::ExternalBookingInfo]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::MeetingsLinkGetBookingInfoBySlugParams
          def get_booking_info_by_slug(slug, params = {})
            @client.request(
              method: :get,
              path: ["scheduler/v3/meetings/meeting-links/book/%1$s", slug],
              model: HubspotSDK::Scheduler::ExternalBookingInfo,
              options: params[:request_options]
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
