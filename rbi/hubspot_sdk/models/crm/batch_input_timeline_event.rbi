# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchInputTimelineEvent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchInputTimelineEvent,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A collection of timeline events we want to create.
        sig { returns(T::Array[HubspotSDK::CRM::TimelineEvent]) }
        attr_accessor :inputs

        # Used to create timeline events in batches.
        sig do
          params(
            inputs: T::Array[HubspotSDK::CRM::TimelineEvent::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # A collection of timeline events we want to create.
          inputs:
        )
        end

        sig do
          override.returns({ inputs: T::Array[HubspotSDK::CRM::TimelineEvent] })
        end
        def to_hash
        end
      end
    end
  end
end
