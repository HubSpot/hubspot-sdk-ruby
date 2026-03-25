# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        class Basic
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Scheduler::Meetings::BasicListParams} for more details.
          #
          # Get a paged list meeting scheduling pages
          #
          # @overload list(after: nil, limit: nil, name: nil, organizer_user_id: nil, type: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param name [String]
          #
          # @param organizer_user_id [String]
          #
          # @param type [Symbol, HubspotSDK::Models::Scheduler::Meetings::BasicListParams::Type]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Scheduler::ExternalLinkMetadata>]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::BasicListParams
          def list(params = {})
            parsed, options = HubspotSDK::Scheduler::Meetings::BasicListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "scheduler/2026-03/meetings/meeting-links",
              query: query.transform_keys(organizer_user_id: "organizerUserId"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Scheduler::ExternalLinkMetadata,
              options: options
            )
          end

          # Get the next availability times for a meeting page.
          #
          # @overload get_availability_by_slug(slug, timezone:, month_offset: nil, request_options: {})
          #
          # @param slug [String]
          # @param timezone [String]
          # @param month_offset [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::ExternalLinkAvailabilityAndBusyTimes]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::BasicGetAvailabilityBySlugParams
          def get_availability_by_slug(slug, params)
            parsed, options = HubspotSDK::Scheduler::Meetings::BasicGetAvailabilityBySlugParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["scheduler/2026-03/meetings/meeting-links/book/availability-page/%1$s", slug],
              query: query.transform_keys(month_offset: "monthOffset"),
              model: HubspotSDK::Scheduler::ExternalLinkAvailabilityAndBusyTimes,
              options: options
            )
          end

          # Get details about the initial information necessary for a meeting scheduler.
          #
          # @overload get_booking_info_by_slug(slug, timezone:, request_options: {})
          #
          # @param slug [String]
          # @param timezone [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Scheduler::ExternalBookingInfo]
          #
          # @see HubspotSDK::Models::Scheduler::Meetings::BasicGetBookingInfoBySlugParams
          def get_booking_info_by_slug(slug, params)
            parsed, options = HubspotSDK::Scheduler::Meetings::BasicGetBookingInfoBySlugParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["scheduler/2026-03/meetings/meeting-links/book/%1$s", slug],
              query: query,
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
