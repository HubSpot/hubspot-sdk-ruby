# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicActionLabels < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_name
        #
        #   @return [String]
        required :action_name, String, api_name: :actionName

        # @!attribute action_card_content
        #
        #   @return [String, nil]
        optional :action_card_content, String, api_name: :actionCardContent

        # @!attribute action_description
        #
        #   @return [String, nil]
        optional :action_description, String, api_name: :actionDescription

        # @!attribute app_display_name
        #
        #   @return [String, nil]
        optional :app_display_name, String, api_name: :appDisplayName

        # @!attribute execution_rules
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :execution_rules, HubspotSDK::Internal::Type::HashOf[String], api_name: :executionRules

        # @!attribute input_field_descriptions
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :input_field_descriptions,
                 HubspotSDK::Internal::Type::HashOf[String],
                 api_name: :inputFieldDescriptions

        # @!attribute input_field_labels
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :input_field_labels, HubspotSDK::Internal::Type::HashOf[String], api_name: :inputFieldLabels

        # @!attribute input_field_option_labels
        #
        #   @return [Hash{Symbol=>Hash{Symbol=>String}}, nil]
        optional :input_field_option_labels,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::HashOf[String]],
                 api_name: :inputFieldOptionLabels

        # @!attribute output_field_labels
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :output_field_labels,
                 HubspotSDK::Internal::Type::HashOf[String],
                 api_name: :outputFieldLabels

        # @!method initialize(action_name:, action_card_content: nil, action_description: nil, app_display_name: nil, execution_rules: nil, input_field_descriptions: nil, input_field_labels: nil, input_field_option_labels: nil, output_field_labels: nil)
        #   @param action_name [String]
        #   @param action_card_content [String]
        #   @param action_description [String]
        #   @param app_display_name [String]
        #   @param execution_rules [Hash{Symbol=>String}]
        #   @param input_field_descriptions [Hash{Symbol=>String}]
        #   @param input_field_labels [Hash{Symbol=>String}]
        #   @param input_field_option_labels [Hash{Symbol=>Hash{Symbol=>String}}]
        #   @param output_field_labels [Hash{Symbol=>String}]
      end
    end
  end
end
