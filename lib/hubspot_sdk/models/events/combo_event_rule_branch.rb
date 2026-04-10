# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class ComboEventRuleBranch < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute composing_rules
        #
        #   @return [Array<HubSpotSDK::Models::Events::ComboEventRule>]
        required :composing_rules,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::ComboEventRule] },
                 api_name: :composingRules

        # @!attribute operation_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::ComboEventRuleBranch::OperationType]
        required :operation_type,
                 enum: -> { HubSpotSDK::Events::ComboEventRuleBranch::OperationType },
                 api_name: :operationType

        # @!attribute rule_branches
        #
        #   @return [Array<HubSpotSDK::Models::Events::ComboEventRuleBranch>]
        required :rule_branches,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::ComboEventRuleBranch] },
                 api_name: :ruleBranches

        # @!method initialize(composing_rules:, operation_type:, rule_branches:)
        #   @param composing_rules [Array<HubSpotSDK::Models::Events::ComboEventRule>]
        #   @param operation_type [Symbol, HubSpotSDK::Models::Events::ComboEventRuleBranch::OperationType]
        #   @param rule_branches [Array<HubSpotSDK::Models::Events::ComboEventRuleBranch>]

        # @see HubSpotSDK::Models::Events::ComboEventRuleBranch#operation_type
        module OperationType
          extend HubSpotSDK::Internal::Type::Enum

          AND = :AND
          OR = :OR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
