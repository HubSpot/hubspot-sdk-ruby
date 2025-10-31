# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicExportListRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicExportListRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::CRM::PublicExportListRequest::ExportInternalValuesOption::OrSymbol
            ]
          )
        end
        attr_accessor :export_internal_values_options

        sig { returns(String) }
        attr_accessor :export_name

        sig do
          returns(
            HubspotSDK::CRM::PublicExportListRequest::ExportType::OrSymbol
          )
        end
        attr_accessor :export_type

        sig do
          returns(HubspotSDK::CRM::PublicExportListRequest::Format::OrSymbol)
        end
        attr_accessor :format_

        sig do
          returns(HubspotSDK::CRM::PublicExportListRequest::Language::OrSymbol)
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
                HubspotSDK::CRM::PublicExportListRequest::ExportInternalValuesOption::OrSymbol
              ],
            export_name: String,
            export_type:
              HubspotSDK::CRM::PublicExportListRequest::ExportType::OrSymbol,
            format_: HubspotSDK::CRM::PublicExportListRequest::Format::OrSymbol,
            language:
              HubspotSDK::CRM::PublicExportListRequest::Language::OrSymbol,
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
                  HubspotSDK::CRM::PublicExportListRequest::ExportInternalValuesOption::OrSymbol
                ],
              export_name: String,
              export_type:
                HubspotSDK::CRM::PublicExportListRequest::ExportType::OrSymbol,
              format_:
                HubspotSDK::CRM::PublicExportListRequest::Format::OrSymbol,
              language:
                HubspotSDK::CRM::PublicExportListRequest::Language::OrSymbol,
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
                HubspotSDK::CRM::PublicExportListRequest::ExportInternalValuesOption
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAMES =
            T.let(
              :NAMES,
              HubspotSDK::CRM::PublicExportListRequest::ExportInternalValuesOption::TaggedSymbol
            )
          VALUES =
            T.let(
              :VALUES,
              HubspotSDK::CRM::PublicExportListRequest::ExportInternalValuesOption::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicExportListRequest::ExportInternalValuesOption::TaggedSymbol
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
                HubspotSDK::CRM::PublicExportListRequest::ExportType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST =
            T.let(
              :LIST,
              HubspotSDK::CRM::PublicExportListRequest::ExportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicExportListRequest::ExportType::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::CRM::PublicExportListRequest::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          XLS =
            T.let(
              :XLS,
              HubspotSDK::CRM::PublicExportListRequest::Format::TaggedSymbol
            )
          XLSX =
            T.let(
              :XLSX,
              HubspotSDK::CRM::PublicExportListRequest::Format::TaggedSymbol
            )
          CSV =
            T.let(
              :CSV,
              HubspotSDK::CRM::PublicExportListRequest::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicExportListRequest::Format::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::CRM::PublicExportListRequest::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN =
            T.let(
              :EN,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          FR =
            T.let(
              :FR,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          JA =
            T.let(
              :JA,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          NL =
            T.let(
              :NL,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :PT_BR,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          IT =
            T.let(
              :IT,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          PL =
            T.let(
              :PL,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          SV =
            T.let(
              :SV,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          FI =
            T.let(
              :FI,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :ZH_TW,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :DA_DK,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )
          NO =
            T.let(
              :NO,
              HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicExportListRequest::Language::TaggedSymbol
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
