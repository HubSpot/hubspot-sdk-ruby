# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Imports#create
      class PublicImportResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute mapped_object_type_ids
        #
        #   @return [Array<String>]
        required :mapped_object_type_ids,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :mappedObjectTypeIds

        # @!attribute metadata
        #
        #   @return [HubspotSDK::Models::CRM::PublicImportMetadata]
        required :metadata, -> { HubspotSDK::CRM::PublicImportMetadata }

        # @!attribute opt_out_import
        #   Whether or not the import is a list of people disqualified from receiving
        #   emails.
        #
        #   @return [Boolean]
        required :opt_out_import, HubspotSDK::Internal::Type::Boolean, api_name: :optOutImport

        # @!attribute state
        #   The status of the import.
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::PublicImportResponse::State]
        required :state, enum: -> { HubspotSDK::CRM::PublicImportResponse::State }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute import_name
        #
        #   @return [String, nil]
        optional :import_name, String, api_name: :importName

        # @!attribute import_request_json
        #
        #   @return [Object, nil]
        optional :import_request_json, HubspotSDK::Internal::Type::Unknown, api_name: :importRequestJson

        # @!attribute import_source
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::PublicImportResponse::ImportSource, nil]
        optional :import_source,
                 enum: -> { HubspotSDK::CRM::PublicImportResponse::ImportSource },
                 api_name: :importSource

        # @!attribute import_template
        #
        #   @return [HubspotSDK::Models::CRM::ImportTemplate, nil]
        optional :import_template, -> { HubspotSDK::CRM::ImportTemplate }, api_name: :importTemplate

        # @!method initialize(id:, created_at:, mapped_object_type_ids:, metadata:, opt_out_import:, state:, updated_at:, import_name: nil, import_request_json: nil, import_source: nil, import_template: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CRM::PublicImportResponse} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param mapped_object_type_ids [Array<String>]
        #
        #   @param metadata [HubspotSDK::Models::CRM::PublicImportMetadata]
        #
        #   @param opt_out_import [Boolean] Whether or not the import is a list of people disqualified from receiving emails
        #
        #   @param state [Symbol, HubspotSDK::Models::CRM::PublicImportResponse::State] The status of the import.
        #
        #   @param updated_at [Time]
        #
        #   @param import_name [String]
        #
        #   @param import_request_json [Object]
        #
        #   @param import_source [Symbol, HubspotSDK::Models::CRM::PublicImportResponse::ImportSource]
        #
        #   @param import_template [HubspotSDK::Models::CRM::ImportTemplate]

        # The status of the import.
        #
        # @see HubspotSDK::Models::CRM::PublicImportResponse#state
        module State
          extend HubspotSDK::Internal::Type::Enum

          STARTED = :STARTED
          PROCESSING = :PROCESSING
          DONE = :DONE
          FAILED = :FAILED
          CANCELED = :CANCELED
          DEFERRED = :DEFERRED
          REVERTED = :REVERTED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::CRM::PublicImportResponse#import_source
        module ImportSource
          extend HubspotSDK::Internal::Type::Enum

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
