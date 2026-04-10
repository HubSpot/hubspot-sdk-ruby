# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicExecutionTranslationRule < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicExecutionTranslationRule,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines the conditions that must be met for the execution rule to apply.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :conditions

        # Specifies the name of the label associated with the execution rule.
        sig { returns(String) }
        attr_accessor :label_name

        sig do
          params(
            conditions: T::Hash[Symbol, T.anything],
            label_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the conditions that must be met for the execution rule to apply.
          conditions:,
          # Specifies the name of the label associated with the execution rule.
          label_name:
        )
        end

        sig do
          override.returns(
            { conditions: T::Hash[Symbol, T.anything], label_name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
