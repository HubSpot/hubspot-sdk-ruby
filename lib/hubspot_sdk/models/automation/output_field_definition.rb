# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class OutputFieldDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type_definition
        #
        #   @return [HubspotSDK::Models::Automation::FieldTypeDefinition]
        required :type_definition,
                 -> {
                   HubspotSDK::Automation::FieldTypeDefinition
                 },
                 api_name: :typeDefinition

        # @!method initialize(type_definition:)
        #   @param type_definition [HubspotSDK::Models::Automation::FieldTypeDefinition]
      end
    end
  end
end
