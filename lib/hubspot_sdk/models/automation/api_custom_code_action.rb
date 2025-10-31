# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APICustomCodeAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
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
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIEnumerationOutputField>]
        required :output_fields,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIEnumerationOutputField]
                 },
                 api_name: :outputFields

        # @!attribute runtime
        #
        #   @return [String]
        required :runtime, String

        # @!attribute secret_names
        #
        #   @return [Array<String>]
        required :secret_names, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :secretNames

        # @!attribute source_code
        #
        #   @return [String]
        required :source_code, String, api_name: :sourceCode

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APICustomCodeAction::Type]
        required :type, enum: -> { HubspotSDK::Automation::APICustomCodeAction::Type }

        # @!attribute connection
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :connection, -> { HubspotSDK::Automation::APIConnection }

        # @!method initialize(action_id:, input_fields:, output_fields:, runtime:, secret_names:, source_code:, type:, connection: nil)
        #   @param action_id [String]
        #   @param input_fields [Array<HubspotSDK::Models::Automation::APIInputVariable>]
        #   @param output_fields [Array<HubspotSDK::Models::Automation::APIEnumerationOutputField>]
        #   @param runtime [String]
        #   @param secret_names [Array<String>]
        #   @param source_code [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APICustomCodeAction::Type]
        #   @param connection [HubspotSDK::Models::Automation::APIConnection]

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
