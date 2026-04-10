# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailabilityAndBusyTimes < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalLinkAvailabilityAndBusyTimes,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Scheduler::ExternalUserBusyTimes]) }
        attr_accessor :all_users_busy_times

        sig do
          returns(T.nilable(HubSpotSDK::Scheduler::ExternalLinkAvailability))
        end
        attr_reader :link_availability

        sig do
          params(
            link_availability:
              HubSpotSDK::Scheduler::ExternalLinkAvailability::OrHash
          ).void
        end
        attr_writer :link_availability

        sig do
          params(
            all_users_busy_times:
              T::Array[HubSpotSDK::Scheduler::ExternalUserBusyTimes::OrHash],
            link_availability:
              HubSpotSDK::Scheduler::ExternalLinkAvailability::OrHash
          ).returns(T.attached_class)
        end
        def self.new(all_users_busy_times:, link_availability: nil)
        end

        sig do
          override.returns(
            {
              all_users_busy_times:
                T::Array[HubSpotSDK::Scheduler::ExternalUserBusyTimes],
              link_availability: HubSpotSDK::Scheduler::ExternalLinkAvailability
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
