# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class ComboEventRuleBranch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute composing_rules
        #
        #   @return [Array<HubspotSDK::Models::Events::ComboEventRule>]
        required :composing_rules,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::ComboEventRule] },
                 api_name: :composingRules

        # @!attribute operation_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::ComboEventRuleBranch::OperationType]
        required :operation_type,
                 enum: -> { HubspotSDK::Events::ComboEventRuleBranch::OperationType },
                 api_name: :operationType

        # @!attribute rule_branches
        #
        #   @return [Array<HubspotSDK::Models::Events::ComboEventRuleBranch>]
        required :rule_branches,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::ComboEventRuleBranch] },
                 api_name: :ruleBranches

        # @!method initialize(composing_rules:, operation_type:, rule_branches:)
        #   @param composing_rules [Array<HubspotSDK::Models::Events::ComboEventRule>]
        #   @param operation_type [Symbol, HubspotSDK::Models::Events::ComboEventRuleBranch::OperationType]
        #   @param rule_branches [Array<HubspotSDK::Models::Events::ComboEventRuleBranch>]

        # @see HubspotSDK::Models::Events::ComboEventRuleBranch#operation_type
        module OperationType
          extend HubspotSDK::Internal::Type::Enum

          AND = :AND
          OR = :OR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
