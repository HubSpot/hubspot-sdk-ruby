# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalUserBusyTimes < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalUserBusyTimes,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Scheduler::ExternalTimeRange]) }
        attr_accessor :busy_times

        # Whether the user is offline.
        sig { returns(T::Boolean) }
        attr_accessor :is_offline

        sig { returns(HubSpotSDK::Scheduler::ExternalMeetingsUser) }
        attr_reader :meetings_user

        sig do
          params(
            meetings_user: HubSpotSDK::Scheduler::ExternalMeetingsUser::OrHash
          ).void
        end
        attr_writer :meetings_user

        sig do
          params(
            busy_times:
              T::Array[HubSpotSDK::Scheduler::ExternalTimeRange::OrHash],
            is_offline: T::Boolean,
            meetings_user: HubSpotSDK::Scheduler::ExternalMeetingsUser::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          busy_times:,
          # Whether the user is offline.
          is_offline:,
          meetings_user:
        )
        end

        sig do
          override.returns(
            {
              busy_times: T::Array[HubSpotSDK::Scheduler::ExternalTimeRange],
              is_offline: T::Boolean,
              meetings_user: HubSpotSDK::Scheduler::ExternalMeetingsUser
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
