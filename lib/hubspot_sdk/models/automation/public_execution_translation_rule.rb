# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicExecutionTranslationRule < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute conditions
        #   Defines the conditions that must be met for the execution rule to apply.
        #
        #   @return [Hash{Symbol=>Object}]
        required :conditions, HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]

        # @!attribute label_name
        #   Specifies the name of the label associated with the execution rule.
        #
        #   @return [String]
        required :label_name, String, api_name: :labelName

        # @!method initialize(conditions:, label_name:)
        #   @param conditions [Hash{Symbol=>Object}] Defines the conditions that must be met for the execution rule to apply.
        #
        #   @param label_name [String] Specifies the name of the label associated with the execution rule.
      end
    end
  end
end
