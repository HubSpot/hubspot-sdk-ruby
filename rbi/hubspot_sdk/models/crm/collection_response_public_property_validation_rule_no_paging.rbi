# typed: strong

module HubspotSDK
  module Models
    module CRM
      class CollectionResponsePublicPropertyValidationRuleNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::CollectionResponsePublicPropertyValidationRuleNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::PublicPropertyValidationRule]) }
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubspotSDK::CRM::PublicPropertyValidationRule::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::CRM::PublicPropertyValidationRule] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
