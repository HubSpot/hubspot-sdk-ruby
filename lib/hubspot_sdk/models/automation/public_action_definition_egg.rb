# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicActionDefinitionEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_url
        #
        #   @return [String]
        required :action_url, String, api_name: :actionUrl

        # @!attribute functions
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicActionFunction>]
        required :functions,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicActionFunction] }

        # @!attribute input_fields
        #
        #   @return [Array<HubspotSDK::Models::Automation::InputFieldDefinition>]
        required :input_fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::InputFieldDefinition] },
                 api_name: :inputFields

        # @!attribute labels
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Automation::PublicActionLabels}]
        required :labels, -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Automation::PublicActionLabels] }

        # @!attribute object_types
        #
        #   @return [Array<String>]
        required :object_types, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :objectTypes

        # @!attribute published
        #
        #   @return [Boolean]
        required :published, HubspotSDK::Internal::Type::Boolean

        # @!attribute archived_at
        #
        #   @return [Integer, nil]
        optional :archived_at, Integer, api_name: :archivedAt

        # @!attribute execution_rules
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicExecutionTranslationRule>, nil]
        optional :execution_rules,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::PublicExecutionTranslationRule]
                 },
                 api_name: :executionRules

        # @!attribute input_field_dependencies
        #
        #   @return [Array<HubspotSDK::Models::Automation::PublicSingleFieldDependency, HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency>, nil]
        optional :input_field_dependencies,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::PublicActionDefinitionEgg::InputFieldDependency]
                 },
                 api_name: :inputFieldDependencies

        # @!attribute object_request_options
        #
        #   @return [HubspotSDK::Models::Automation::PublicObjectRequestOptions, nil]
        optional :object_request_options,
                 -> { HubspotSDK::Automation::PublicObjectRequestOptions },
                 api_name: :objectRequestOptions

        # @!attribute output_fields
        #
        #   @return [Array<HubspotSDK::Models::Automation::OutputFieldDefinition>, nil]
        optional :output_fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::OutputFieldDefinition] },
                 api_name: :outputFields

        # @!method initialize(action_url:, functions:, input_fields:, labels:, object_types:, published:, archived_at: nil, execution_rules: nil, input_field_dependencies: nil, object_request_options: nil, output_fields: nil)
        #   @param action_url [String]
        #   @param functions [Array<HubspotSDK::Models::Automation::PublicActionFunction>]
        #   @param input_fields [Array<HubspotSDK::Models::Automation::InputFieldDefinition>]
        #   @param labels [Hash{Symbol=>HubspotSDK::Models::Automation::PublicActionLabels}]
        #   @param object_types [Array<String>]
        #   @param published [Boolean]
        #   @param archived_at [Integer]
        #   @param execution_rules [Array<HubspotSDK::Models::Automation::PublicExecutionTranslationRule>]
        #   @param input_field_dependencies [Array<HubspotSDK::Models::Automation::PublicSingleFieldDependency, HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency>]
        #   @param object_request_options [HubspotSDK::Models::Automation::PublicObjectRequestOptions]
        #   @param output_fields [Array<HubspotSDK::Models::Automation::OutputFieldDefinition>]

        module InputFieldDependency
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::PublicSingleFieldDependency }

          variant -> { HubspotSDK::Automation::PublicConditionalSingleFieldDependency }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::PublicSingleFieldDependency, HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency)]
        end
      end
    end
  end
end
