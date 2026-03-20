# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class SimplePublicObjectBatchInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the contact to update. This can be the object ID, or the unique
        #   property value of the `idProperty` property.
        #
        #   @return [String]
        required :id, String

        # @!attribute properties
        #   Key-value pairs representing the properties of the object.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute id_property
        #   The name of a unique property, when identifying records by property.
        #
        #   @return [String, nil]
        optional :id_property, String, api_name: :idProperty

        # @!attribute object_write_trace_id
        #   A unique identifier for tracing the request.
        #
        #   @return [String, nil]
        optional :object_write_trace_id, String, api_name: :objectWriteTraceId

        # @!method initialize(id:, properties:, id_property: nil, object_write_trace_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::SimplePublicObjectBatchInput} for more details.
        #
        #   Contains an array of CRM object records to be processed in a batch operation,
        #   each defined by their ID and properties.
        #
        #   @param id [String] The ID of the contact to update. This can be the object ID, or the unique proper
        #
        #   @param properties [Hash{Symbol=>String}] Key-value pairs representing the properties of the object.
        #
        #   @param id_property [String] The name of a unique property, when identifying records by property.
        #
        #   @param object_write_trace_id [String] A unique identifier for tracing the request.
      end
    end
  end
end
