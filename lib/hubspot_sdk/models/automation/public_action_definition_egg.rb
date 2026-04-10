# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicActionDefinitionEgg < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute action_url
        #   The URL endpoint where the action is executed.
        #
        #   @return [String]
        required :action_url, String, api_name: :actionUrl

        # @!attribute functions
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicActionFunction>]
        required :functions,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionFunction] }

        # @!attribute input_fields
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicInputFieldDefinition>]
        required :input_fields,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicInputFieldDefinition]
                 },
                 api_name: :inputFields

        # @!attribute labels
        #   Holds various labels associated with the action, including names and
        #   descriptions.
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Automation::PublicActionLabels}]
        required :labels, -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Automation::PublicActionLabels] }

        # @!attribute object_types
        #
        #   @return [Array<String>]
        required :object_types, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :objectTypes

        # @!attribute published
        #   Indicates whether the action is published and available for use.
        #
        #   @return [Boolean]
        required :published, HubSpotSDK::Internal::Type::Boolean

        # @!attribute archived_at
        #   The timestamp indicating when the action was archived.
        #
        #   @return [Integer, nil]
        optional :archived_at, Integer, api_name: :archivedAt

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
                   HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Automation::PublicActionDefinitionEgg::InputFieldDependency]
                 },
                 api_name: :inputFieldDependencies

        # @!attribute object_request_options
        #
        #   @return [HubSpotSDK::Models::Automation::PublicObjectRequestOptions, nil]
        optional :object_request_options,
                 -> { HubSpotSDK::Automation::PublicObjectRequestOptions },
                 api_name: :objectRequestOptions

        # @!attribute output_fields
        #
        #   @return [Array<HubSpotSDK::Models::Automation::OutputFieldDefinition>, nil]
        optional :output_fields,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::OutputFieldDefinition] },
                 api_name: :outputFields

        # @!method initialize(action_url:, functions:, input_fields:, labels:, object_types:, published:, archived_at: nil, execution_rules: nil, input_field_dependencies: nil, object_request_options: nil, output_fields: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::PublicActionDefinitionEgg} for more details.
        #
        #   @param action_url [String] The URL endpoint where the action is executed.
        #
        #   @param functions [Array<HubSpotSDK::Models::Automation::PublicActionFunction>]
        #
        #   @param input_fields [Array<HubSpotSDK::Models::Automation::PublicInputFieldDefinition>]
        #
        #   @param labels [Hash{Symbol=>HubSpotSDK::Models::Automation::PublicActionLabels}] Holds various labels associated with the action, including names and description
        #
        #   @param object_types [Array<String>]
        #
        #   @param published [Boolean] Indicates whether the action is published and available for use.
        #
        #   @param archived_at [Integer] The timestamp indicating when the action was archived.
        #
        #   @param execution_rules [Array<HubSpotSDK::Models::Automation::PublicExecutionTranslationRule>]
        #
        #   @param input_field_dependencies [Array<HubSpotSDK::Models::Automation::PublicSingleFieldDependency, HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency>]
        #
        #   @param object_request_options [HubSpotSDK::Models::Automation::PublicObjectRequestOptions]
        #
        #   @param output_fields [Array<HubSpotSDK::Models::Automation::OutputFieldDefinition>]

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
