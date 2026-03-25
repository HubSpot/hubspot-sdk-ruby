# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicExportListRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute associated_object_type
        #
        #   @return [Array<String>]
        required :associated_object_type,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :associatedObjectType

        # @!attribute export_internal_values_options
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Crm::PublicExportListRequest::ExportInternalValuesOption>]
        required :export_internal_values_options,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption]
                 },
                 api_name: :exportInternalValuesOptions

        # @!attribute export_name
        #
        #   @return [String]
        required :export_name, String, api_name: :exportName

        # @!attribute export_type
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportListRequest::ExportType]
        required :export_type,
                 enum: -> { HubspotSDK::Crm::PublicExportListRequest::ExportType },
                 api_name: :exportType

        # @!attribute format_
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportListRequest::Format]
        required :format_, enum: -> { HubspotSDK::Crm::PublicExportListRequest::Format }, api_name: :format

        # @!attribute include_labeled_associations
        #
        #   @return [Boolean]
        required :include_labeled_associations,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeLabeledAssociations

        # @!attribute include_primary_display_property_for_associated_objects
        #
        #   @return [Boolean]
        required :include_primary_display_property_for_associated_objects,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includePrimaryDisplayPropertyForAssociatedObjects

        # @!attribute language
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportListRequest::Language]
        required :language, enum: -> { HubspotSDK::Crm::PublicExportListRequest::Language }

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

        # @!method initialize(associated_object_type:, export_internal_values_options:, export_name:, export_type:, format_:, include_labeled_associations:, include_primary_display_property_for_associated_objects:, language:, list_id:, object_properties:, object_type:, override_associated_objects_per_definition_per_row_limit:)
        #   @param associated_object_type [Array<String>]
        #   @param export_internal_values_options [Array<Symbol, HubspotSDK::Models::Crm::PublicExportListRequest::ExportInternalValuesOption>]
        #   @param export_name [String]
        #   @param export_type [Symbol, HubspotSDK::Models::Crm::PublicExportListRequest::ExportType]
        #   @param format_ [Symbol, HubspotSDK::Models::Crm::PublicExportListRequest::Format]
        #   @param include_labeled_associations [Boolean]
        #   @param include_primary_display_property_for_associated_objects [Boolean]
        #   @param language [Symbol, HubspotSDK::Models::Crm::PublicExportListRequest::Language]
        #   @param list_id [String]
        #   @param object_properties [Array<String>]
        #   @param object_type [String]
        #   @param override_associated_objects_per_definition_per_row_limit [Boolean]

        module ExportInternalValuesOption
          extend HubspotSDK::Internal::Type::Enum

          NAMES = :NAMES
          VALUES = :VALUES

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicExportListRequest#export_type
        module ExportType
          extend HubspotSDK::Internal::Type::Enum

          LIST = :LIST

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicExportListRequest#format_
        module Format
          extend HubspotSDK::Internal::Type::Enum

          XLS = :XLS
          XLSX = :XLSX
          CSV = :CSV

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicExportListRequest#language
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
          KO_KR = :KO_KR
          TH = :TH
          ZH_CN = :ZH_CN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
