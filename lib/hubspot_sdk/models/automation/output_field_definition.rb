# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class OutputFieldDefinition < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute type_definition
        #
        #   @return [HubSpotSDK::Models::Automation::FieldTypeDefinition]
        required :type_definition,
                 -> {
                   HubSpotSDK::Automation::FieldTypeDefinition
                 },
                 api_name: :typeDefinition

        # @!method initialize(type_definition:)
        #   @param type_definition [HubSpotSDK::Models::Automation::FieldTypeDefinition]
      end
    end
  end
end
