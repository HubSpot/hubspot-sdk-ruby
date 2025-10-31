# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::PropertyValidations#get
      class PropertyValidationGetResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::PropertyValidationGetResponse::Result>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::CRM::PropertyValidationGetResponse::Result] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::CRM::PropertyValidationGetResponse::Result>]

        class Result < HubspotSDK::Internal::Type::BaseModel
          # @!attribute rule_arguments
          #
          #   @return [Array<String>]
          required :rule_arguments, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :ruleArguments

          # @!attribute rule_type
          #
          #   @return [String]
          required :rule_type, String, api_name: :ruleType

          # @!method initialize(rule_arguments:, rule_type:)
          #   @param rule_arguments [Array<String>]
          #   @param rule_type [String]
        end
      end
    end
  end
end
