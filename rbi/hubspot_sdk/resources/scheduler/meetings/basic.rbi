# typed: strong

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        class Basic
          # Get a paged list meeting scheduling pages
          sig do
            params(
              after: String,
              limit: Integer,
              name: String,
              organizer_user_id: String,
              type:
                HubspotSDK::Scheduler::Meetings::BasicListParams::Type::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Scheduler::ExternalLinkMetadata
              ]
            )
          end
          def list(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # The maximum number of results to display per page.
            limit: nil,
            name: nil,
            organizer_user_id: nil,
            type: nil,
            request_options: {}
          )
          end

          # Get the next availability times for a meeting page.
          sig do
            params(
              slug: String,
              timezone: String,
              month_offset: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Scheduler::ExternalLinkAvailabilityAndBusyTimes
            )
          end
          def get_availability_by_slug(
            slug,
            timezone:,
            month_offset: nil,
            request_options: {}
          )
          end

          # Get details about the initial information necessary for a meeting scheduler.
          sig do
            params(
              slug: String,
              timezone: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Scheduler::ExternalBookingInfo)
          end
          def get_booking_info_by_slug(slug, timezone:, request_options: {})
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
