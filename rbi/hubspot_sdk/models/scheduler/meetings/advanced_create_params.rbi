# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      module Meetings
        class AdvancedCreateParams < HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventCreateRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Scheduler::Meetings::AdvancedCreateParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :organizer_user_id

          sig do
            params(
              organizer_user_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(organizer_user_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                organizer_user_id: String,
                request_options: HubSpotSDK::RequestOptions
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
