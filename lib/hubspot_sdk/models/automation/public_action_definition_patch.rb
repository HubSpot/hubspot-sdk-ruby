# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicActionDefinitionPatch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_url
        #
        #   @return [String, nil]
        optional :action_url, String, api_name: :actionUrl

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
                   HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::PublicActionDefinitionPatch::InputFieldDependency]
                 },
                 api_name: :inputFieldDependencies

        # @!attribute input_fields
        #
        #   @return [Array<HubspotSDK::Models::Automation::InputFieldDefinition>, nil]
        optional :input_fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::InputFieldDefinition] },
                 api_name: :inputFields

        # @!attribute labels
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Automation::PublicActionLabels}, nil]
        optional :labels, -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Automation::PublicActionLabels] }

        # @!attribute object_request_options
        #
        #   @return [HubspotSDK::Models::Automation::PublicObjectRequestOptions, nil]
        optional :object_request_options,
                 -> { HubspotSDK::Automation::PublicObjectRequestOptions },
                 api_name: :objectRequestOptions

        # @!attribute object_types
        #
        #   @return [Array<String>, nil]
        optional :object_types, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :objectTypes

        # @!attribute output_fields
        #
        #   @return [Array<HubspotSDK::Models::Automation::OutputFieldDefinition>, nil]
        optional :output_fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::OutputFieldDefinition] },
                 api_name: :outputFields

        # @!attribute published
        #
        #   @return [Boolean, nil]
        optional :published, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(action_url: nil, execution_rules: nil, input_field_dependencies: nil, input_fields: nil, labels: nil, object_request_options: nil, object_types: nil, output_fields: nil, published: nil)
        #   @param action_url [String]
        #   @param execution_rules [Array<HubspotSDK::Models::Automation::PublicExecutionTranslationRule>]
        #   @param input_field_dependencies [Array<HubspotSDK::Models::Automation::PublicSingleFieldDependency, HubspotSDK::Models::Automation::PublicConditionalSingleFieldDependency>]
        #   @param input_fields [Array<HubspotSDK::Models::Automation::InputFieldDefinition>]
        #   @param labels [Hash{Symbol=>HubspotSDK::Models::Automation::PublicActionLabels}]
        #   @param object_request_options [HubspotSDK::Models::Automation::PublicObjectRequestOptions]
        #   @param object_types [Array<String>]
        #   @param output_fields [Array<HubspotSDK::Models::Automation::OutputFieldDefinition>]
        #   @param published [Boolean]

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
