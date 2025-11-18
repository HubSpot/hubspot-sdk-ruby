# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        class CalendarCreateParams < HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Scheduler::Meetings::CalendarCreateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :organizer_user_id

          sig do
            params(
              organizer_user_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(organizer_user_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                organizer_user_id: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
