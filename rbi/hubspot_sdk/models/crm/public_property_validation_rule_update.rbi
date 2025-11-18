# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyValidationRuleUpdate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicPropertyValidationRuleUpdate,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A list of arguments that define the constraints for the validation rule.
        sig { returns(T::Array[String]) }
        attr_accessor :rule_arguments

        sig do
          params(rule_arguments: T::Array[String]).returns(T.attached_class)
        end
        def self.new(
          # A list of arguments that define the constraints for the validation rule.
          rule_arguments:
        )
        end

        sig { override.returns({ rule_arguments: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
