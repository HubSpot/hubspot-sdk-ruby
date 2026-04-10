# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Imports#create
      class PublicImportResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for this import.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The timestamp when the object was created, in ISO 8601 format.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute mapped_object_type_ids
        #
        #   @return [Array<String>]
        required :mapped_object_type_ids,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :mappedObjectTypeIds

        # @!attribute metadata
        #
        #   @return [HubSpotSDK::Models::Crm::PublicImportMetadata]
        required :metadata, -> { HubSpotSDK::Crm::PublicImportMetadata }

        # @!attribute opt_out_import
        #   Whether or not the import is a list of people disqualified from receiving
        #   emails.
        #
        #   @return [Boolean]
        required :opt_out_import, HubSpotSDK::Internal::Type::Boolean, api_name: :optOutImport

        # @!attribute state
        #   The status of the import.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicImportResponse::State]
        required :state, enum: -> { HubSpotSDK::Crm::PublicImportResponse::State }

        # @!attribute updated_at
        #   The timestamp when the import record was last updated, formatted as an ISO 8601
        #   instant.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute import_name
        #   The user-provided name for this import.
        #
        #   @return [String, nil]
        optional :import_name, String, api_name: :importName

        # @!attribute import_request_json
        #   The complete import request configuration as a JSON object.
        #
        #   @return [Object, nil]
        optional :import_request_json, HubSpotSDK::Internal::Type::Unknown, api_name: :importRequestJson

        # @!attribute import_source
        #   Indicates where/how the import was initiated.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicImportResponse::ImportSource, nil]
        optional :import_source,
                 enum: -> { HubSpotSDK::Crm::PublicImportResponse::ImportSource },
                 api_name: :importSource

        # @!attribute import_template
        #
        #   @return [HubSpotSDK::Models::Crm::ImportTemplate, nil]
        optional :import_template, -> { HubSpotSDK::Crm::ImportTemplate }, api_name: :importTemplate

        # @!method initialize(id:, created_at:, mapped_object_type_ids:, metadata:, opt_out_import:, state:, updated_at:, import_name: nil, import_request_json: nil, import_source: nil, import_template: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicImportResponse} for more details.
        #
        #   @param id [String] The unique identifier for this import.
        #
        #   @param created_at [Time] The timestamp when the object was created, in ISO 8601 format.
        #
        #   @param mapped_object_type_ids [Array<String>]
        #
        #   @param metadata [HubSpotSDK::Models::Crm::PublicImportMetadata]
        #
        #   @param opt_out_import [Boolean] Whether or not the import is a list of people disqualified from receiving emails
        #
        #   @param state [Symbol, HubSpotSDK::Models::Crm::PublicImportResponse::State] The status of the import.
        #
        #   @param updated_at [Time] The timestamp when the import record was last updated, formatted as an ISO 8601
        #
        #   @param import_name [String] The user-provided name for this import.
        #
        #   @param import_request_json [Object] The complete import request configuration as a JSON object.
        #
        #   @param import_source [Symbol, HubSpotSDK::Models::Crm::PublicImportResponse::ImportSource] Indicates where/how the import was initiated.
        #
        #   @param import_template [HubSpotSDK::Models::Crm::ImportTemplate]

        # The status of the import.
        #
        # @see HubSpotSDK::Models::Crm::PublicImportResponse#state
        module State
          extend HubSpotSDK::Internal::Type::Enum

          CANCELED = :CANCELED
          DEFERRED = :DEFERRED
          DONE = :DONE
          FAILED = :FAILED
          PROCESSING = :PROCESSING
          REVERTED = :REVERTED
          STARTED = :STARTED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Indicates where/how the import was initiated.
        #
        # @see HubSpotSDK::Models::Crm::PublicImportResponse#import_source
        module ImportSource
          extend HubSpotSDK::Internal::Type::Enum

          API = :API
          CRM_UI = :CRM_UI
          IMPORT = :IMPORT
          MOBILE_ANDROID = :MOBILE_ANDROID
          MOBILE_IOS = :MOBILE_IOS
          SALESFORCE = :SALESFORCE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
