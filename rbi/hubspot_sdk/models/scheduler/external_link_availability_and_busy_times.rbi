# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailabilityAndBusyTimes < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalLinkAvailabilityAndBusyTimes,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Scheduler::ExternalUserBusyTimes]) }
        attr_accessor :all_users_busy_times

        sig do
          returns(T.nilable(HubspotSDK::Scheduler::ExternalLinkAvailability))
        end
        attr_reader :link_availability

        sig do
          params(
            link_availability:
              HubspotSDK::Scheduler::ExternalLinkAvailability::OrHash
          ).void
        end
        attr_writer :link_availability

        sig do
          params(
            all_users_busy_times:
              T::Array[HubspotSDK::Scheduler::ExternalUserBusyTimes::OrHash],
            link_availability:
              HubspotSDK::Scheduler::ExternalLinkAvailability::OrHash
          ).returns(T.attached_class)
        end
        def self.new(all_users_busy_times:, link_availability: nil)
        end

        sig do
          override.returns(
            {
              all_users_busy_times:
                T::Array[HubspotSDK::Scheduler::ExternalUserBusyTimes],
              link_availability: HubspotSDK::Scheduler::ExternalLinkAvailability
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
