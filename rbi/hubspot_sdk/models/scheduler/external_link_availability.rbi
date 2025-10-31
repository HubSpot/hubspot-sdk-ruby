# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailability < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalLinkAvailability,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :has_more

        sig do
          returns(
            T::Hash[
              Symbol,
              HubspotSDK::Scheduler::ExternalLinkAvailabilityForDuration
            ]
          )
        end
        attr_accessor :link_availability_by_duration

        sig do
          params(
            has_more: T::Boolean,
            link_availability_by_duration:
              T::Hash[
                Symbol,
                HubspotSDK::Scheduler::ExternalLinkAvailabilityForDuration::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(has_more:, link_availability_by_duration:)
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              link_availability_by_duration:
                T::Hash[
                  Symbol,
                  HubspotSDK::Scheduler::ExternalLinkAvailabilityForDuration
                ]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
