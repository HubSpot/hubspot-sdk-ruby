# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePublicPropertyValidationRuleNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Collection of validation rules configured for the specified property. Each rule
        # defines a constraint that property values must satisfy (e.g., format
        # requirements, length limits, allowed values).
        sig { returns(T::Array[HubspotSDK::Crm::PublicPropertyValidationRule]) }
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubspotSDK::Crm::PublicPropertyValidationRule::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Collection of validation rules configured for the specified property. Each rule
          # defines a constraint that property values must satisfy (e.g., format
          # requirements, length limits, allowed values).
          results:
        )
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::Crm::PublicPropertyValidationRule] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
