# typed: strong

module HubSpotSDK
  module Models
    module Events
      class ComboEventRuleBranch < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::ComboEventRuleBranch,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Events::ComboEventRule]) }
        attr_accessor :composing_rules

        sig do
          returns(
            HubSpotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol
          )
        end
        attr_accessor :operation_type

        sig { returns(T::Array[HubSpotSDK::Events::ComboEventRuleBranch]) }
        attr_accessor :rule_branches

        sig do
          params(
            composing_rules:
              T::Array[HubSpotSDK::Events::ComboEventRule::OrHash],
            operation_type:
              HubSpotSDK::Events::ComboEventRuleBranch::OperationType::OrSymbol,
            rule_branches: T::Array[HubSpotSDK::Events::ComboEventRuleBranch]
          ).returns(T.attached_class)
        end
        def self.new(composing_rules:, operation_type:, rule_branches:)
        end

        sig do
          override.returns(
            {
              composing_rules: T::Array[HubSpotSDK::Events::ComboEventRule],
              operation_type:
                HubSpotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol,
              rule_branches: T::Array[HubSpotSDK::Events::ComboEventRuleBranch]
            }
          )
        end
        def to_hash
        end

        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::ComboEventRuleBranch::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AND =
            T.let(
              :AND,
              HubSpotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol
            )
          OR =
            T.let(
              :OR,
              HubSpotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
