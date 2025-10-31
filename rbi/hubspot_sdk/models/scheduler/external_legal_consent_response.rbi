# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLegalConsentResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalLegalConsentResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :communication_type_id

        sig { returns(T::Boolean) }
        attr_accessor :consented

        sig do
          params(communication_type_id: String, consented: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(communication_type_id:, consented:)
        end

        sig do
          override.returns(
            { communication_type_id: String, consented: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
