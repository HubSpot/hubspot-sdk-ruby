# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class SimplePublicObjectBatchInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The id to be updated. This can be the object id, or the unique property value of
        #   the idProperty property
        #
        #   @return [String]
        required :id, String

        # @!attribute properties
        #   Key-value pairs representing the properties of the object.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute id_property
        #   The name of a property whose values are unique for this object
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
        #   {HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput} for more details.
        #
        #   Contains an array of CRM object records to be processed in a batch operation,
        #   each defined by their ID and properties.
        #
        #   @param id [String] The id to be updated. This can be the object id, or the unique property value of
        #
        #   @param properties [Hash{Symbol=>String}] Key-value pairs representing the properties of the object.
        #
        #   @param id_property [String] The name of a property whose values are unique for this object
        #
        #   @param object_write_trace_id [String] A unique identifier for tracing the request.
      end
    end
  end
end
