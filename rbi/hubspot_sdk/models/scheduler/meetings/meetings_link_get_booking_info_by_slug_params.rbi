# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        class MeetingsLinkGetBookingInfoBySlugParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Scheduler::Meetings::MeetingsLinkGetBookingInfoBySlugParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Return times in response based on specified time zone.
          sig { returns(String) }
          attr_accessor :timezone

          sig do
            params(
              timezone: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Return times in response based on specified time zone.
            timezone:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { timezone: String, request_options: HubspotSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
