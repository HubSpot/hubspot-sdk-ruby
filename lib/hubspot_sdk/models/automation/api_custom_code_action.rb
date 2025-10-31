# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APICustomCodeAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #   The ID for this action.
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute input_fields
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIInputVariable>]
        required :input_fields,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIInputVariable] },
                 api_name: :inputFields

        # @!attribute output_fields
        #   The list of output fields that this custom action makes available to the rest of
        #   the flow.
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIEnumerationOutputField>]
        required :output_fields,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIEnumerationOutputField]
                 },
                 api_name: :outputFields

        # @!attribute runtime
        #   The runtime to use to execute the source code. Supported runtimes are:
        #   "NODE16X", "NODE20X", "PYTHON39"
        #
        #   @return [String]
        required :runtime, String

        # @!attribute secret_names
        #   The names of any "secrets" setup in this portal that will be used in this
        #   action.
        #
        #   @return [Array<String>]
        required :secret_names, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :secretNames

        # @!attribute source_code
        #   The source code to execute when this action executes.
        #
        #   @return [String]
        required :source_code, String, api_name: :sourceCode

        # @!attribute type
        #   The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        #   "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APICustomCodeAction::Type]
        required :type, enum: -> { HubspotSDK::Automation::APICustomCodeAction::Type }

        # @!attribute connection
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :connection, -> { HubspotSDK::Automation::APIConnection }

        # @!method initialize(action_id:, input_fields:, output_fields:, runtime:, secret_names:, source_code:, type:, connection: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APICustomCodeAction} for more details.
        #
        #   @param action_id [String] The ID for this action.
        #
        #   @param input_fields [Array<HubspotSDK::Models::Automation::APIInputVariable>]
        #
        #   @param output_fields [Array<HubspotSDK::Models::Automation::APIEnumerationOutputField>] The list of output fields that this custom action makes available to the rest of
        #
        #   @param runtime [String] The runtime to use to execute the source code. Supported runtimes are: "NODE16X"
        #
        #   @param secret_names [Array<String>] The names of any "secrets" setup in this portal that will be used in this action
        #
        #   @param source_code [String] The source code to execute when this action executes.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APICustomCodeAction::Type] The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH", "AB_TEST_BRA
        #
        #   @param connection [HubspotSDK::Models::Automation::APIConnection]

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        #
        # @see HubspotSDK::Models::Automation::APICustomCodeAction#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          CUSTOM_CODE = :CUSTOM_CODE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
