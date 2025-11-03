# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicExportViewRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute associated_object_type
        #
        #   @return [Array<String>]
        required :associated_object_type,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :associatedObjectType

        # @!attribute export_internal_values_options
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Crm::PublicExportViewRequest::ExportInternalValuesOption>]
        required :export_internal_values_options,
                 -> {
                   HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption]
                 },
                 api_name: :exportInternalValuesOptions

        # @!attribute export_name
        #
        #   @return [String]
        required :export_name, String, api_name: :exportName

        # @!attribute export_type
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportViewRequest::ExportType]
        required :export_type,
                 enum: -> { HubspotSDK::Crm::PublicExportViewRequest::ExportType },
                 api_name: :exportType

        # @!attribute format_
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportViewRequest::Format]
        required :format_, enum: -> { HubspotSDK::Crm::PublicExportViewRequest::Format }, api_name: :format

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
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicExportViewRequest::Language]
        required :language, enum: -> { HubspotSDK::Crm::PublicExportViewRequest::Language }

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

        # @!attribute public_crm_search_request
        #
        #   @return [HubspotSDK::Models::Crm::PublicCrmSearchRequest, nil]
        optional :public_crm_search_request,
                 -> { HubspotSDK::Crm::PublicCrmSearchRequest },
                 api_name: :publicCrmSearchRequest

        # @!method initialize(associated_object_type:, export_internal_values_options:, export_name:, export_type:, format_:, include_labeled_associations:, include_primary_display_property_for_associated_objects:, language:, object_properties:, object_type:, override_associated_objects_per_definition_per_row_limit:, public_crm_search_request: nil)
        #   @param associated_object_type [Array<String>]
        #   @param export_internal_values_options [Array<Symbol, HubspotSDK::Models::Crm::PublicExportViewRequest::ExportInternalValuesOption>]
        #   @param export_name [String]
        #   @param export_type [Symbol, HubspotSDK::Models::Crm::PublicExportViewRequest::ExportType]
        #   @param format_ [Symbol, HubspotSDK::Models::Crm::PublicExportViewRequest::Format]
        #   @param include_labeled_associations [Boolean]
        #   @param include_primary_display_property_for_associated_objects [Boolean]
        #   @param language [Symbol, HubspotSDK::Models::Crm::PublicExportViewRequest::Language]
        #   @param object_properties [Array<String>]
        #   @param object_type [String]
        #   @param override_associated_objects_per_definition_per_row_limit [Boolean]
        #   @param public_crm_search_request [HubspotSDK::Models::Crm::PublicCrmSearchRequest]

        module ExportInternalValuesOption
          extend HubspotSDK::Internal::Type::Enum

          NAMES = :NAMES
          VALUES = :VALUES

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicExportViewRequest#export_type
        module ExportType
          extend HubspotSDK::Internal::Type::Enum

          VIEW = :VIEW

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicExportViewRequest#format_
        module Format
          extend HubspotSDK::Internal::Type::Enum

          XLS = :XLS
          XLSX = :XLSX
          CSV = :CSV

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicExportViewRequest#language
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
