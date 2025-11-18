# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Exports#get
      class PublicExportResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the export.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The timestamp when the export was created, in ISO 8601 format.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute export_state
        #   The current state of the export process.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportResponse::ExportState]
        required :export_state,
                 enum: -> { HubspotSDK::Crm::PublicExportResponse::ExportState },
                 api_name: :exportState

        # @!attribute export_type
        #   The type of export, which can be either VIEW or LIST.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportResponse::ExportType]
        required :export_type,
                 enum: -> { HubspotSDK::Crm::PublicExportResponse::ExportType },
                 api_name: :exportType

        # @!attribute object_properties
        #   The list of properties exported for the associated object.
        #
        #   @return [Array<String>]
        required :object_properties, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :objectProperties

        # @!attribute object_type
        #   The associated CRM object being exported.
        #
        #   @return [String]
        required :object_type, String, api_name: :objectType

        # @!attribute updated_at
        #   The timestamp when the export was last updated, in ISO 8601 format.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute export_name
        #   The name assigned to the export.
        #
        #   @return [String, nil]
        optional :export_name, String, api_name: :exportName

        # @!attribute record_count
        #   The total number of records included in the export.
        #
        #   @return [Integer, nil]
        optional :record_count, Integer, api_name: :recordCount

        # @!method initialize(id:, created_at:, export_state:, export_type:, object_properties:, object_type:, updated_at:, export_name: nil, record_count: nil)
        #   @param id [String] The unique ID of the export.
        #
        #   @param created_at [Time] The timestamp when the export was created, in ISO 8601 format.
        #
        #   @param export_state [Symbol, HubspotSDK::Models::Crm::PublicExportResponse::ExportState] The current state of the export process.
        #
        #   @param export_type [Symbol, HubspotSDK::Models::Crm::PublicExportResponse::ExportType] The type of export, which can be either VIEW or LIST.
        #
        #   @param object_properties [Array<String>] The list of properties exported for the associated object.
        #
        #   @param object_type [String] The associated CRM object being exported.
        #
        #   @param updated_at [Time] The timestamp when the export was last updated, in ISO 8601 format.
        #
        #   @param export_name [String] The name assigned to the export.
        #
        #   @param record_count [Integer] The total number of records included in the export.

        # The current state of the export process.
        #
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

        # The type of export, which can be either VIEW or LIST.
        #
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
