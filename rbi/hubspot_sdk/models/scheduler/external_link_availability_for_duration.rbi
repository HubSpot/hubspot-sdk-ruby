# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailabilityForDuration < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalLinkAvailabilityForDuration,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Scheduler::ExternalMeetingAvailability])
        end
        attr_accessor :availabilities

        # The duration of the meeting in milliseconds.
        sig { returns(Integer) }
        attr_accessor :meeting_duration_millis

        sig do
          params(
            availabilities:
              T::Array[
                HubSpotSDK::Scheduler::ExternalMeetingAvailability::OrHash
              ],
            meeting_duration_millis: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          availabilities:,
          # The duration of the meeting in milliseconds.
          meeting_duration_millis:
        )
        end

        sig do
          override.returns(
            {
              availabilities:
                T::Array[HubSpotSDK::Scheduler::ExternalMeetingAvailability],
              meeting_duration_millis: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
