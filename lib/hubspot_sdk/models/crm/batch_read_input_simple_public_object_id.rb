# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchReadInputSimplePublicObjectID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObjectID] }

        # @!attribute properties
        #   Key-value pairs for setting properties for the new object.
        #
        #   @return [Array<String>]
        required :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute properties_with_history
        #   Key-value pairs for setting properties for the new object and their histories.
        #
        #   @return [Array<String>]
        required :properties_with_history,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :propertiesWithHistory

        # @!attribute id_property
        #   A unique property used to identify objects instead of the default ID.
        #
        #   @return [String, nil]
        optional :id_property, String, api_name: :idProperty

        # @!method initialize(inputs:, properties:, properties_with_history:, id_property: nil)
        #   Specifies the input for reading a batch of CRM objects, including arrays of
        #   object IDs, requested property names (with optional history), and an optional
        #   unique identifying property.
        #
        #   @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
        #
        #   @param properties [Array<String>] Key-value pairs for setting properties for the new object.
        #
        #   @param properties_with_history [Array<String>] Key-value pairs for setting properties for the new object and their histories.
        #
        #   @param id_property [String] A unique property used to identify objects instead of the default ID.
      end
    end
  end
end
