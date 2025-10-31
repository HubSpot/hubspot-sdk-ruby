# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCommunicationConsentCheckbox < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalCommunicationConsentCheckbox,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :communication_type_id

        sig { returns(String) }
        attr_accessor :label

        sig { returns(T::Boolean) }
        attr_accessor :required

        sig do
          params(
            communication_type_id: String,
            label: String,
            required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(communication_type_id:, label:, required:)
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
