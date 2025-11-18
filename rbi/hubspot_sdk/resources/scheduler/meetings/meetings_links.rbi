# typed: strong

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        class MeetingsLinks
          # Get a paged list meeting scheduling pages
          sig do
            params(
              after: String,
              limit: Integer,
              name: String,
              organizer_user_id: String,
              type: String,
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
            # Retrieve scheduling pages with a specified name.
            name: nil,
            # Filter the response to scheduling pages created by the specified user.
            organizer_user_id: nil,
            # Filter the response to the specific type of meeting.
            type: nil,
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
            duration:,
            email:,
            first_name:,
            form_fields:,
            last_name:,
            legal_consent_responses:,
            likely_available_user_ids:,
            slug:,
            start_time:,
            locale: nil,
            timezone: nil,
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
            # The path for the meeting page that you want the available times for.
            slug,
            # Return times in response based on specified time zone.
            timezone:,
            # Get times for a different month.
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
          def get_booking_info_by_slug(
            # The path to the scheduling page that you want the information for.
            slug,
            # Return times in response based on specified time zone.
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
