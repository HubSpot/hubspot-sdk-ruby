# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        class SimplePublicObjectBatchInputForCreate < HubspotSDK::Internal::Type::BaseModel
          # @!attribute associations
          #
          #   @return [Array<HubspotSDK::Models::CRM::PublicAssociationsForObject>]
          required :associations,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicAssociationsForObject] }

          # @!attribute properties
          #
          #   @return [Hash{Symbol=>String}]
          required :properties, HubspotSDK::Internal::Type::HashOf[String]

          # @!attribute object_write_trace_id
          #
          #   @return [String, nil]
          optional :object_write_trace_id, String, api_name: :objectWriteTraceId

          # @!method initialize(associations:, properties:, object_write_trace_id: nil)
          #   @param associations [Array<HubspotSDK::Models::CRM::PublicAssociationsForObject>]
          #   @param properties [Hash{Symbol=>String}]
          #   @param object_write_trace_id [String]
        end
      end
    end
  end
end
