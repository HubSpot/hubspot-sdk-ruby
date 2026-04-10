# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicActionDefinition < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute action_url
        #
        #   @return [String]
        required :action_url, String, api_name: :actionUrl

        # @!attribute functions
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicActionFunctionIdentifier>]
        required :functions,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicActionFunctionIdentifier] }

        # @!attribute input_fields
        #
        #   @return [Array<HubSpotSDK::Models::Automation::PublicInputFieldDefinition>]
        required :input_fields,
                 -> {
                   HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::PublicInputFieldDefinition]
                 },
                 api_name: :inputFields

        # @!attribute labels
        #
        #   @return [Hash{Symbol=>HubSpotSDK::Models::Automation::PublicActionLabels}]
        required :labels, -> { HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Automation::PublicActionLabels] }

        # @!attribute object_types
        #
        #   @return [Array<String>]
        required :object_types, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :objectTypes

        # @!attribute published
        #
        #   @return [Boolean]
        required :published, HubSpotSDK::Internal::Type::Boolean

        # @!attribute revision_id
        #
        #   @return [String]
        required :revision_id, String, api_name: :revisionId

        # @!attribute archived_at
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
                   HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Automation::PublicActionDefinition::InputFieldDependency]
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

        # @!method initialize(id:, action_url:, functions:, input_fields:, labels:, object_types:, published:, revision_id:, archived_at: nil, execution_rules: nil, input_field_dependencies: nil, object_request_options: nil, output_fields: nil)
        #   @param id [String]
        #   @param action_url [String]
        #   @param functions [Array<HubSpotSDK::Models::Automation::PublicActionFunctionIdentifier>]
        #   @param input_fields [Array<HubSpotSDK::Models::Automation::PublicInputFieldDefinition>]
        #   @param labels [Hash{Symbol=>HubSpotSDK::Models::Automation::PublicActionLabels}]
        #   @param object_types [Array<String>]
        #   @param published [Boolean]
        #   @param revision_id [String]
        #   @param archived_at [Integer]
        #   @param execution_rules [Array<HubSpotSDK::Models::Automation::PublicExecutionTranslationRule>]
        #   @param input_field_dependencies [Array<HubSpotSDK::Models::Automation::PublicSingleFieldDependency, HubSpotSDK::Models::Automation::PublicConditionalSingleFieldDependency>]
        #   @param object_request_options [HubSpotSDK::Models::Automation::PublicObjectRequestOptions]
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
