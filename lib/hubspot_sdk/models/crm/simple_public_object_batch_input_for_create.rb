# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class SimplePublicObjectBatchInputForCreate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute associations
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationsForObject>]
        required :associations,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationsForObject] }

        # @!attribute properties
        #   Key value pairs representing the properties of the object.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute object_write_trace_id
        #   An identifier used for tracing the creation or update request of the object.
        #
        #   @return [String, nil]
        optional :object_write_trace_id, String, api_name: :objectWriteTraceId

        # @!method initialize(associations:, properties:, object_write_trace_id: nil)
        #   An input object that contains a collection of objects to be created together in
        #   a batch.
        #
        #   @param associations [Array<HubSpotSDK::Models::Crm::PublicAssociationsForObject>]
        #
        #   @param properties [Hash{Symbol=>String}] Key value pairs representing the properties of the object.
        #
        #   @param object_write_trace_id [String] An identifier used for tracing the creation or update request of the object.
      end
    end
  end
end
