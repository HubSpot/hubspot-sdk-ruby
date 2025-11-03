# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicExportListRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicExportListRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::OrSymbol
            ]
          )
        end
        attr_accessor :export_internal_values_options

        sig { returns(String) }
        attr_accessor :export_name

        sig do
          returns(
            HubspotSDK::Crm::PublicExportListRequest::ExportType::OrSymbol
          )
        end
        attr_accessor :export_type

        sig do
          returns(HubspotSDK::Crm::PublicExportListRequest::Format::OrSymbol)
        end
        attr_accessor :format_

        sig do
          returns(HubspotSDK::Crm::PublicExportListRequest::Language::OrSymbol)
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

        sig { returns(T.nilable(String)) }
        attr_reader :associated_object_type

        sig { params(associated_object_type: String).void }
        attr_writer :associated_object_type

        sig do
          params(
            export_internal_values_options:
              T::Array[
                HubspotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::OrSymbol
              ],
            export_name: String,
            export_type:
              HubspotSDK::Crm::PublicExportListRequest::ExportType::OrSymbol,
            format_: HubspotSDK::Crm::PublicExportListRequest::Format::OrSymbol,
            language:
              HubspotSDK::Crm::PublicExportListRequest::Language::OrSymbol,
            list_id: String,
            object_properties: T::Array[String],
            object_type: String,
            override_associated_objects_per_definition_per_row_limit:
              T::Boolean,
            associated_object_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          export_internal_values_options:,
          export_name:,
          export_type:,
          format_:,
          language:,
          list_id:,
          object_properties:,
          object_type:,
          override_associated_objects_per_definition_per_row_limit:,
          associated_object_type: nil
        )
        end

        sig do
          override.returns(
            {
              export_internal_values_options:
                T::Array[
                  HubspotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::OrSymbol
                ],
              export_name: String,
              export_type:
                HubspotSDK::Crm::PublicExportListRequest::ExportType::OrSymbol,
              format_:
                HubspotSDK::Crm::PublicExportListRequest::Format::OrSymbol,
              language:
                HubspotSDK::Crm::PublicExportListRequest::Language::OrSymbol,
              list_id: String,
              object_properties: T::Array[String],
              object_type: String,
              override_associated_objects_per_definition_per_row_limit:
                T::Boolean,
              associated_object_type: String
            }
          )
        end
        def to_hash
        end

        module ExportInternalValuesOption
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAMES =
            T.let(
              :NAMES,
              HubspotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::TaggedSymbol
            )
          VALUES =
            T.let(
              :VALUES,
              HubspotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportListRequest::ExportInternalValuesOption::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ExportType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicExportListRequest::ExportType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST =
            T.let(
              :LIST,
              HubspotSDK::Crm::PublicExportListRequest::ExportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportListRequest::ExportType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Format
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicExportListRequest::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          XLS =
            T.let(
              :XLS,
              HubspotSDK::Crm::PublicExportListRequest::Format::TaggedSymbol
            )
          XLSX =
            T.let(
              :XLSX,
              HubspotSDK::Crm::PublicExportListRequest::Format::TaggedSymbol
            )
          CSV =
            T.let(
              :CSV,
              HubspotSDK::Crm::PublicExportListRequest::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportListRequest::Format::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Language
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicExportListRequest::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN =
            T.let(
              :EN,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          FR =
            T.let(
              :FR,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          JA =
            T.let(
              :JA,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          NL =
            T.let(
              :NL,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :PT_BR,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          IT =
            T.let(
              :IT,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          PL =
            T.let(
              :PL,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          SV =
            T.let(
              :SV,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          FI =
            T.let(
              :FI,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :ZH_TW,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :DA_DK,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )
          NO =
            T.let(
              :NO,
              HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportListRequest::Language::TaggedSymbol
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
