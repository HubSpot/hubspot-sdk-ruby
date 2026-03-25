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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :should_apply_normalization

        sig { params(should_apply_normalization: T::Boolean).void }
        attr_writer :should_apply_normalization

        sig do
          params(
            rule_arguments: T::Array[String],
            should_apply_normalization: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of arguments that define the constraints for the validation rule.
          rule_arguments:,
          should_apply_normalization: nil
        )
        end

        sig do
          override.returns(
            {
              rule_arguments: T::Array[String],
              should_apply_normalization: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
