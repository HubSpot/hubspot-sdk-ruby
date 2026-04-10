# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchReadInputSimplePublicObjectID < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObjectID] }

        # @!attribute properties
        #   Key-value pairs for setting properties for the new object.
        #
        #   @return [Array<String>]
        required :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute properties_with_history
        #   Key-value pairs for setting properties for the new object and their histories.
        #
        #   @return [Array<String>]
        required :properties_with_history,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :propertiesWithHistory

        # @!attribute id_property
        #   When using a custom unique value property to retrieve records, the name of the
        #   property. Do not include this parameter if retrieving by record ID.
        #
        #   @return [String, nil]
        optional :id_property, String, api_name: :idProperty

        # @!method initialize(inputs:, properties:, properties_with_history:, id_property: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::BatchReadInputSimplePublicObjectID} for more details.
        #
        #   Specifies the input for reading a batch of CRM objects, including arrays of
        #   object IDs, requested property names (with optional history), and an optional
        #   unique identifying property.
        #
        #   @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
        #
        #   @param properties [Array<String>] Key-value pairs for setting properties for the new object.
        #
        #   @param properties_with_history [Array<String>] Key-value pairs for setting properties for the new object and their histories.
        #
        #   @param id_property [String] When using a custom unique value property to retrieve records, the name of the p
      end
    end
  end
end
