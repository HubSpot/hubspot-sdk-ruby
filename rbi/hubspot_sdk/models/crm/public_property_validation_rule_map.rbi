# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicPropertyValidationRuleMap < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicPropertyValidationRuleMap,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :property_name

        sig { returns(T::Array[HubspotSDK::CRM::PublicPropertyValidationRule]) }
        attr_accessor :property_validation_rules

        sig do
          params(
            property_name: String,
            property_validation_rules:
              T::Array[HubspotSDK::CRM::PublicPropertyValidationRule::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(property_name:, property_validation_rules:)
        end

        sig do
          override.returns(
            {
              property_name: String,
              property_validation_rules:
                T::Array[HubspotSDK::CRM::PublicPropertyValidationRule]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
