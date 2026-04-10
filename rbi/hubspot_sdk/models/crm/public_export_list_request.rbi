# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicExportListRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicExportListRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :associated_object_type

        sig do
          returns(
            T::Array[
              HubSpotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::OrSymbol
            ]
          )
        end
        attr_accessor :export_internal_values_options

        sig { returns(String) }
        attr_accessor :export_name

        sig do
          returns(
            HubSpotSDK::Crm::PublicExportListRequest::ExportType::OrSymbol
          )
        end
        attr_accessor :export_type

        sig do
          returns(HubSpotSDK::Crm::PublicExportListRequest::Format::OrSymbol)
        end
        attr_accessor :format_

        sig { returns(T::Boolean) }
        attr_accessor :include_labeled_associations

        sig { returns(T::Boolean) }
        attr_accessor :include_primary_display_property_for_associated_objects

        sig do
          returns(HubSpotSDK::Crm::PublicExportListRequest::Language::OrSymbol)
        end
        attr_accessor :language

        sig { returns(String) }
        attr_accessor :list_id

        sig { returns(T::Array[String]) }
        attr_accessor :object_properties

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(T::Boolean) }
        attr_accessor :override_associated_objects_per_definition_per_row_limit

        sig do
          params(
            associated_object_type: T::Array[String],
            export_internal_values_options:
              T::Array[
                HubSpotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::OrSymbol
              ],
            export_name: String,
            export_type:
              HubSpotSDK::Crm::PublicExportListRequest::ExportType::OrSymbol,
            format_: HubSpotSDK::Crm::PublicExportListRequest::Format::OrSymbol,
            include_labeled_associations: T::Boolean,
            include_primary_display_property_for_associated_objects: T::Boolean,
            language:
              HubSpotSDK::Crm::PublicExportListRequest::Language::OrSymbol,
            list_id: String,
            object_properties: T::Array[String],
            object_type: String,
            override_associated_objects_per_definition_per_row_limit: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          associated_object_type:,
          export_internal_values_options:,
          export_name:,
          export_type:,
          format_:,
          include_labeled_associations:,
          include_primary_display_property_for_associated_objects:,
          language:,
          list_id:,
          object_properties:,
          object_type:,
          override_associated_objects_per_definition_per_row_limit:
        )
        end

        sig do
          override.returns(
            {
              associated_object_type: T::Array[String],
              export_internal_values_options:
                T::Array[
                  HubSpotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::OrSymbol
                ],
              export_name: String,
              export_type:
                HubSpotSDK::Crm::PublicExportListRequest::ExportType::OrSymbol,
              format_:
                HubSpotSDK::Crm::PublicExportListRequest::Format::OrSymbol,
              include_labeled_associations: T::Boolean,
              include_primary_display_property_for_associated_objects:
                T::Boolean,
              language:
                HubSpotSDK::Crm::PublicExportListRequest::Language::OrSymbol,
              list_id: String,
              object_properties: T::Array[String],
              object_type: String,
              override_associated_objects_per_definition_per_row_limit:
                T::Boolean
            }
          )
        end
        def to_hash
        end

        module ExportInternalValuesOption
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAMES =
            T.let(
              :NAMES,
              HubSpotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::TaggedSymbol
            )
          VALUES =
            T.let(
              :VALUES,
              HubSpotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ExportType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicExportListRequest::ExportType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST =
            T.let(
              :LIST,
              HubSpotSDK::Crm::PublicExportListRequest::ExportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportListRequest::ExportType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Format
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicExportListRequest::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          XLS =
            T.let(
              :XLS,
              HubSpotSDK::Crm::PublicExportListRequest::Format::TaggedSymbol
            )
          XLSX =
            T.let(
              :XLSX,
              HubSpotSDK::Crm::PublicExportListRequest::Format::TaggedSymbol
            )
          CSV =
            T.let(
              :CSV,
              HubSpotSDK::Crm::PublicExportListRequest::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportListRequest::Format::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Language
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicExportListRequest::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN =
            T.let(
              :EN,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          FR =
            T.let(
              :FR,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          JA =
            T.let(
              :JA,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          NL =
            T.let(
              :NL,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :PT_BR,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          IT =
            T.let(
              :IT,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          PL =
            T.let(
              :PL,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          SV =
            T.let(
              :SV,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          FI =
            T.let(
              :FI,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :ZH_TW,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :DA_DK,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          NO =
            T.let(
              :NO,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :KO_KR,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          TH =
            T.let(
              :TH,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :ZH_CN,
              HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
