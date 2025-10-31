# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class SimplePublicObjectBatchInputForCreate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute properties
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute associations
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicAssociationsForObject>, nil]
        optional :associations,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicAssociationsForObject] }

        # @!attribute object_write_trace_id
        #
        #   @return [String, nil]
        optional :object_write_trace_id, String, api_name: :objectWriteTraceId

        # @!method initialize(properties:, associations: nil, object_write_trace_id: nil)
        #   @param properties [Hash{Symbol=>String}]
        #   @param associations [Array<HubspotSDK::Models::CRM::PublicAssociationsForObject>]
        #   @param object_write_trace_id [String]
      end
    end
  end
end
