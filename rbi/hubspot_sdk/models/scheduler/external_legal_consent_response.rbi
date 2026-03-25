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

        # The ID of communication consent form being recorded.
        sig { returns(String) }
        attr_accessor :communication_type_id

        # Whether the user has given consent for the specified communication type.
        sig { returns(T::Boolean) }
        attr_accessor :consented

        sig do
          params(communication_type_id: String, consented: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of communication consent form being recorded.
          communication_type_id:,
          # Whether the user has given consent for the specified communication type.
          consented:
        )
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
