# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchInputTimelineEvent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchInputTimelineEvent,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A collection of timeline events we want to create.
        sig { returns(T::Array[HubspotSDK::Crm::TimelineEvent]) }
        attr_accessor :inputs

        # Used to create timeline events in batches.
        sig do
          params(
            inputs: T::Array[HubspotSDK::Crm::TimelineEvent::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # A collection of timeline events we want to create.
          inputs:
        )
        end

        sig do
          override.returns({ inputs: T::Array[HubspotSDK::Crm::TimelineEvent] })
        end
        def to_hash
        end
      end
    end
  end
end
