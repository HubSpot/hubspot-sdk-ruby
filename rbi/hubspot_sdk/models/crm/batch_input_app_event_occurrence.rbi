# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchInputAppEventOccurrence < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchInputAppEventOccurrence,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::AppEventOccurrence]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::Crm::AppEventOccurrence::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::Crm::AppEventOccurrence] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
