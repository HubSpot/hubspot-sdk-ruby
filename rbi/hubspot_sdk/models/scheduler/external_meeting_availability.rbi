# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalMeetingAvailability < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalMeetingAvailability,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The end time of the meeting availability, represented as Unix time in
        # milliseconds.
        sig { returns(Integer) }
        attr_accessor :end_millis_utc

        # The start time of the meeting availability, represented as Unix time in
        # milliseconds.
        sig { returns(Integer) }
        attr_accessor :start_millis_utc

        sig do
          params(end_millis_utc: Integer, start_millis_utc: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The end time of the meeting availability, represented as Unix time in
          # milliseconds.
          end_millis_utc:,
          # The start time of the meeting availability, represented as Unix time in
          # milliseconds.
          start_millis_utc:
        )
        end

        sig do
          override.returns(
            { end_millis_utc: Integer, start_millis_utc: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
