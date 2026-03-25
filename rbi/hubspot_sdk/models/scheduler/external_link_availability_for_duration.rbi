# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailabilityForDuration < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalLinkAvailabilityForDuration,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Scheduler::ExternalMeetingAvailability])
        end
        attr_accessor :availabilities

        # The duration of the meeting in milliseconds.
        sig { returns(Integer) }
        attr_accessor :meeting_duration_millis

        sig do
          params(
            availabilities:
              T::Array[
                HubspotSDK::Scheduler::ExternalMeetingAvailability::OrHash
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
                T::Array[HubspotSDK::Scheduler::ExternalMeetingAvailability],
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
