# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalLinkAvailability < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalLinkAvailability,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Whether there are more available meeting times beyond the returned set.
        sig { returns(T::Boolean) }
        attr_accessor :has_more

        # Available booking slots for the meeting, grouped by the duration.
        sig do
          returns(
            T::Hash[
              Symbol,
              HubSpotSDK::Scheduler::ExternalLinkAvailabilityForDuration
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
                HubSpotSDK::Scheduler::ExternalLinkAvailabilityForDuration::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether there are more available meeting times beyond the returned set.
          has_more:,
          # Available booking slots for the meeting, grouped by the duration.
          link_availability_by_duration:
        )
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              link_availability_by_duration:
                T::Hash[
                  Symbol,
                  HubSpotSDK::Scheduler::ExternalLinkAvailabilityForDuration
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
