# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyValidationRule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicPropertyValidationRule,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :rule_arguments

        sig { returns(String) }
        attr_accessor :rule_type

        sig do
          params(rule_arguments: T::Array[String], rule_type: String).returns(
            T.attached_class
          )
        end
        def self.new(rule_arguments:, rule_type:)
        end

        sig do
          override.returns(
            { rule_arguments: T::Array[String], rule_type: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
