# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicExportResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute export_state
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportResponse::ExportState]
        required :export_state,
                 enum: -> { HubspotSDK::Crm::PublicExportResponse::ExportState },
                 api_name: :exportState

        # @!attribute export_type
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportResponse::ExportType]
        required :export_type,
                 enum: -> { HubspotSDK::Crm::PublicExportResponse::ExportType },
                 api_name: :exportType

        # @!attribute object_properties
        #
        #   @return [Array<String>]
        required :object_properties, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :objectProperties

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String, api_name: :objectType

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute export_name
        #
        #   @return [String, nil]
        optional :export_name, String, api_name: :exportName

        # @!attribute record_count
        #
        #   @return [Integer, nil]
        optional :record_count, Integer, api_name: :recordCount

        # @!method initialize(id:, created_at:, export_state:, export_type:, object_properties:, object_type:, updated_at:, export_name: nil, record_count: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param export_state [Symbol, HubspotSDK::Models::Crm::PublicExportResponse::ExportState]
        #   @param export_type [Symbol, HubspotSDK::Models::Crm::PublicExportResponse::ExportType]
        #   @param object_properties [Array<String>]
        #   @param object_type [String]
        #   @param updated_at [Time]
        #   @param export_name [String]
        #   @param record_count [Integer]

        # @see HubspotSDK::Models::Crm::PublicExportResponse#export_state
        module ExportState
          extend HubspotSDK::Internal::Type::Enum

          ENQUEUED = :ENQUEUED
          PROCESSING = :PROCESSING
          DONE = :DONE
          FAILED = :FAILED
          CANCELED = :CANCELED
          CONFLICT = :CONFLICT
          DELETED = :DELETED
          DEFERRED = :DEFERRED
          PENDING_APPROVAL = :PENDING_APPROVAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicExportResponse#export_type
        module ExportType
          extend HubspotSDK::Internal::Type::Enum

          VIEW = :VIEW
          LIST = :LIST

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
