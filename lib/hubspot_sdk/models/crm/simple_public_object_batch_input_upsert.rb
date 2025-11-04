# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class SimplePublicObjectBatchInputUpsert < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute properties
        #   Key value pairs representing the properties of the object.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute id_property
        #   The name of a unique identifier property, which can be used for identifying
        #   objects instead of the object ID.
        #
        #   @return [String, nil]
        optional :id_property, String, api_name: :idProperty

        # @!attribute object_write_trace_id
        #   An identifier for tracing the creation request.
        #
        #   @return [String, nil]
        optional :object_write_trace_id, String, api_name: :objectWriteTraceId

        # @!method initialize(id:, properties:, id_property: nil, object_write_trace_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert} for more details.
        #
        #   Represents an object used in batch upsert operations, containing an object’s
        #   unique identifier, its properties, and optionally the unique property name and a
        #   write trace ID.
        #
        #   @param id [String] The unique ID of the object.
        #
        #   @param properties [Hash{Symbol=>String}] Key value pairs representing the properties of the object.
        #
        #   @param id_property [String] The name of a unique identifier property, which can be used for identifying obje
        #
        #   @param object_write_trace_id [String] An identifier for tracing the creation request.
      end
    end
  end
end
