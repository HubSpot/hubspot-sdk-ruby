# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCommunicationConsentCheckbox < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalCommunicationConsentCheckbox,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The ID of the communication consent form being recorded.
        sig { returns(String) }
        attr_accessor :communication_type_id

        # The text label describing the consent being given.
        sig { returns(String) }
        attr_accessor :label

        # Whether the consent checkbox is required.
        sig { returns(T::Boolean) }
        attr_accessor :required

        sig do
          params(
            communication_type_id: String,
            label: String,
            required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the communication consent form being recorded.
          communication_type_id:,
          # The text label describing the consent being given.
          label:,
          # Whether the consent checkbox is required.
          required:
        )
        end

        sig do
          override.returns(
            {
              communication_type_id: String,
              label: String,
              required: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
