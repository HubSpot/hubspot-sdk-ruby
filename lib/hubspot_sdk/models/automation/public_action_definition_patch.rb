# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicActionDefinitionPatch < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute action_url
        #   The URL endpoint where the action is executed.
        #
        #   @return [String, nil]
        optional :action_url, String, api_name: :actionUrl

        # @!attribute execution_rules
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicExecutionTranslationRule>, nil]
        optional :execution_rules,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicExecutionTranslationRule]
                 },
                 api_name: :executionRules

        # @!attribute input_field_dependencies
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicSingleFieldDependency, HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency>, nil]
        optional :input_field_dependencies,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Automation::PublicActionDefinitionPatch::InputFieldDependency]
                 },
                 api_name: :inputFieldDependencies

        # @!attribute input_fields
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicInputFieldDefinition>, nil]
        optional :input_fields,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicInputFieldDefinition]
                 },
                 api_name: :inputFields

        # @!attribute labels
        #   Contains labels for the action, including names and descriptions.
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Automation::PublicActionLabels}, nil]
        optional :labels, -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Automation::PublicActionLabels] }

        # @!attribute object_request_options
        #
        #   @return [HubSpotSDK::Models::Automation::PublicObjectRequestOptions, nil]
        optional :object_request_options,
                 -> { HubSpotSDK::Automation::PublicObjectRequestOptions },
                 api_name: :objectRequestOptions

        # @!attribute object_types
        #
        #   @return [Array<String>, nil]
        optional :object_types, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :objectTypes

        # @!attribute output_fields
        #
        #   @return [Array<HubSpotSDK::Models::Automation::OutputFieldDefinition>, nil]
        optional :output_fields,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::OutputFieldDefinition] },
                 api_name: :outputFields

        # @!attribute published
        #   Indicates whether the action is published and available for use.
        #
        #   @return [Boolean, nil]
        optional :published, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(action_url: nil, execution_rules: nil, input_field_dependencies: nil, input_fields: nil, labels: nil, object_request_options: nil, object_types: nil, output_fields: nil, published: nil)
        #   @param action_url [String] The URL endpoint where the action is executed.
        #
        #   @param execution_rules [Array<HubSpotSDK::Models::Automation::PublicExecutionTranslationRule>]
        #
        #   @param input_field_dependencies [Array<HubSpotSDK::Models::Automation::PublicSingleFieldDependency, HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency>]
        #
        #   @param input_fields [Array<HubSpotSDK::Models::Automation::PublicInputFieldDefinition>]
        #
        #   @param labels [Hash{Symbol=>HubSpotSDK::Models::Automation::PublicActionLabels}] Contains labels for the action, including names and descriptions.
        #
        #   @param object_request_options [HubSpotSDK::Models::Automation::PublicObjectRequestOptions]
        #
        #   @param object_types [Array<String>]
        #
        #   @param output_fields [Array<HubSpotSDK::Models::Automation::OutputFieldDefinition>]
        #
        #   @param published [Boolean] Indicates whether the action is published and available for use.

        module InputFieldDependency
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Automation::PublicSingleFieldDependency }

          variant -> { HubSpotSDK::Automation::PublicConditionalSingleFieldDependency }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Automation::PublicSingleFieldDependency, HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency)]
        end
      end
    end
  end
end
