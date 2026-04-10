# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponsePublicPropertyValidationRuleNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::CollectionResponsePublicPropertyValidationRuleNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Collection of validation rules configured for the specified property. Each rule
        # defines a constraint that property values must satisfy (e.g., format
        # requirements, length limits, allowed values).
        sig { returns(T::Array[HubSpotSDK::Crm::PublicPropertyValidationRule]) }
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubSpotSDK::Crm::PublicPropertyValidationRule::OrHash]
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
            { results: T::Array[HubSpotSDK::Crm::PublicPropertyValidationRule] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
