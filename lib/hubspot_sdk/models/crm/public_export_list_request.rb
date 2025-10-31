# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicExportListRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute export_internal_values_options
        #
        #   @return [Array<Symbol, HubspotSDK::Models::CRM::PublicExportListRequest::ExportInternalValuesOption>]
        required :export_internal_values_options,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::CRM::PublicExportListRequest::ExportInternalValuesOption]
                 },
                 api_name: :exportInternalValuesOptions

        # @!attribute export_name
        #
        #   @return [String]
        required :export_name, String, api_name: :exportName

        # @!attribute export_type
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::PublicExportListRequest::ExportType]
        required :export_type,
                 enum: -> { HubspotSDK::CRM::PublicExportListRequest::ExportType },
                 api_name: :exportType

        # @!attribute format_
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::PublicExportListRequest::Format]
        required :format_, enum: -> { HubspotSDK::CRM::PublicExportListRequest::Format }, api_name: :format

        # @!attribute language
        #
        #   @return [Symbol, HubspotSDK::Models::CRM::PublicExportListRequest::Language]
        required :language, enum: -> { HubspotSDK::CRM::PublicExportListRequest::Language }

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute object_properties
        #
        #   @return [Array<String>]
        required :object_properties, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :objectProperties

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String, api_name: :objectType

        # @!attribute override_associated_objects_per_definition_per_row_limit
        #
        #   @return [Boolean]
        required :override_associated_objects_per_definition_per_row_limit,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :overrideAssociatedObjectsPerDefinitionPerRowLimit

        # @!attribute associated_object_type
        #
        #   @return [String, nil]
        optional :associated_object_type, String, api_name: :associatedObjectType

        # @!method initialize(export_internal_values_options:, export_name:, export_type:, format_:, language:, list_id:, object_properties:, object_type:, override_associated_objects_per_definition_per_row_limit:, associated_object_type: nil)
        #   @param export_internal_values_options [Array<Symbol, HubspotSDK::Models::CRM::PublicExportListRequest::ExportInternalValuesOption>]
        #   @param export_name [String]
        #   @param export_type [Symbol, HubspotSDK::Models::CRM::PublicExportListRequest::ExportType]
        #   @param format_ [Symbol, HubspotSDK::Models::CRM::PublicExportListRequest::Format]
        #   @param language [Symbol, HubspotSDK::Models::CRM::PublicExportListRequest::Language]
        #   @param list_id [String]
        #   @param object_properties [Array<String>]
        #   @param object_type [String]
        #   @param override_associated_objects_per_definition_per_row_limit [Boolean]
        #   @param associated_object_type [String]

        module ExportInternalValuesOption
          extend HubspotSDK::Internal::Type::Enum

          NAMES = :NAMES
          VALUES = :VALUES

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::CRM::PublicExportListRequest#export_type
        module ExportType
          extend HubspotSDK::Internal::Type::Enum

          LIST = :LIST

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::CRM::PublicExportListRequest#format_
        module Format
          extend HubspotSDK::Internal::Type::Enum

          XLS = :XLS
          XLSX = :XLSX
          CSV = :CSV

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::CRM::PublicExportListRequest#language
        module Language
          extend HubspotSDK::Internal::Type::Enum

          EN = :EN
          DE = :DE
          ES = :ES
          FR = :FR
          JA = :JA
          NL = :NL
          PT_BR = :PT_BR
          IT = :IT
          PL = :PL
          SV = :SV
          FI = :FI
          ZH_TW = :ZH_TW
          DA_DK = :DA_DK
          NO = :NO

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
