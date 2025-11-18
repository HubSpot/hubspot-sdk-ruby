# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      module Meetings
        class MeetingsLinkGetAvailabilityBySlugParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Scheduler::Meetings::MeetingsLinkGetAvailabilityBySlugParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Return times in response based on specified time zone.
          sig { returns(String) }
          attr_accessor :timezone

          # Get times for a different month.
          sig { returns(T.nilable(Integer)) }
          attr_reader :month_offset

          sig { params(month_offset: Integer).void }
          attr_writer :month_offset

          sig do
            params(
              timezone: String,
              month_offset: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Return times in response based on specified time zone.
            timezone:,
            # Get times for a different month.
            month_offset: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                timezone: String,
                month_offset: Integer,
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
