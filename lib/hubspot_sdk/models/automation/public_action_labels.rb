# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicActionLabels < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute action_name
        #   The name of the action.
        #
        #   @return [String]
        required :action_name, String, api_name: :actionName

        # @!attribute action_card_content
        #   Content displayed on the action card.
        #
        #   @return [String, nil]
        optional :action_card_content, String, api_name: :actionCardContent

        # @!attribute action_description
        #   A description of what the action does.
        #
        #   @return [String, nil]
        optional :action_description, String, api_name: :actionDescription

        # @!attribute app_display_name
        #   The display name of the application associated with the action.
        #
        #   @return [String, nil]
        optional :app_display_name, String, api_name: :appDisplayName

        # @!attribute execution_rules
        #   Rules that govern the execution of the action.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :execution_rules, HubSpotSDK::Internal::Type::HashOf[String], api_name: :executionRules

        # @!attribute input_field_descriptions
        #   Descriptions for each input field.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :input_field_descriptions,
                 HubSpotSDK::Internal::Type::HashOf[String],
                 api_name: :inputFieldDescriptions

        # @!attribute input_field_labels
        #   Labels for the input fields.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :input_field_labels, HubSpotSDK::Internal::Type::HashOf[String], api_name: :inputFieldLabels

        # @!attribute input_field_option_labels
        #   Labels for the options available in input fields.
        #
        #   @return [Hash{Symbol=>Hash{Symbol=>String}}, nil]
        optional :input_field_option_labels,
                 HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::HashOf[String]],
                 api_name: :inputFieldOptionLabels

        # @!attribute output_field_labels
        #   Labels for the output fields.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :output_field_labels,
                 HubSpotSDK::Internal::Type::HashOf[String],
                 api_name: :outputFieldLabels

        # @!method initialize(action_name:, action_card_content: nil, action_description: nil, app_display_name: nil, execution_rules: nil, input_field_descriptions: nil, input_field_labels: nil, input_field_option_labels: nil, output_field_labels: nil)
        #   @param action_name [String] The name of the action.
        #
        #   @param action_card_content [String] Content displayed on the action card.
        #
        #   @param action_description [String] A description of what the action does.
        #
        #   @param app_display_name [String] The display name of the application associated with the action.
        #
        #   @param execution_rules [Hash{Symbol=>String}] Rules that govern the execution of the action.
        #
        #   @param input_field_descriptions [Hash{Symbol=>String}] Descriptions for each input field.
        #
        #   @param input_field_labels [Hash{Symbol=>String}] Labels for the input fields.
        #
        #   @param input_field_option_labels [Hash{Symbol=>Hash{Symbol=>String}}] Labels for the options available in input fields.
        #
        #   @param output_field_labels [Hash{Symbol=>String}] Labels for the output fields.
      end
    end
  end
end
