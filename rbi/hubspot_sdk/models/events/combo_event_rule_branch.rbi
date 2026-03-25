# typed: strong

module HubspotSDK
  module Models
    module Events
      class ComboEventRuleBranch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::ComboEventRuleBranch,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Events::ComboEventRule]) }
        attr_accessor :composing_rules

        sig do
          returns(
            HubspotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol
          )
        end
        attr_accessor :operation_type

        sig { returns(T::Array[HubspotSDK::Events::ComboEventRuleBranch]) }
        attr_accessor :rule_branches

        sig do
          params(
            composing_rules:
              T::Array[HubspotSDK::Events::ComboEventRule::OrHash],
            operation_type:
              HubspotSDK::Events::ComboEventRuleBranch::OperationType::OrSymbol,
            rule_branches: T::Array[HubspotSDK::Events::ComboEventRuleBranch]
          ).returns(T.attached_class)
        end
        def self.new(composing_rules:, operation_type:, rule_branches:)
        end

        sig do
          override.returns(
            {
              composing_rules: T::Array[HubspotSDK::Events::ComboEventRule],
              operation_type:
                HubspotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol,
              rule_branches: T::Array[HubspotSDK::Events::ComboEventRuleBranch]
            }
          )
        end
        def to_hash
        end

        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::ComboEventRuleBranch::OperationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AND =
            T.let(
              :AND,
              HubspotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol
            )
          OR =
            T.let(
              :OR,
              HubspotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::ComboEventRuleBranch::OperationType::TaggedSymbol
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
