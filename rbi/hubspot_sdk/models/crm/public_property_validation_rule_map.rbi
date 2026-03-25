# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyValidationRuleMap < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicPropertyValidationRuleMap,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The name of the property for which validation rules are defined.
        sig { returns(String) }
        attr_accessor :property_name

        # A list of validation rules applicable to the property.
        sig { returns(T::Array[HubspotSDK::Crm::PublicPropertyValidationRule]) }
        attr_accessor :property_validation_rules

        sig do
          params(
            property_name: String,
            property_validation_rules:
              T::Array[HubspotSDK::Crm::PublicPropertyValidationRule::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the property for which validation rules are defined.
          property_name:,
          # A list of validation rules applicable to the property.
          property_validation_rules:
        )
        end

        sig do
          override.returns(
            {
              property_name: String,
              property_validation_rules:
                T::Array[HubspotSDK::Crm::PublicPropertyValidationRule]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
