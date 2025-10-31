# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicExportViewRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicExportViewRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::CRM::PublicExportViewRequest::ExportInternalValuesOption::OrSymbol
            ]
          )
        end
        attr_accessor :export_internal_values_options

        sig { returns(String) }
        attr_accessor :export_name

        sig do
          returns(
            HubspotSDK::CRM::PublicExportViewRequest::ExportType::OrSymbol
          )
        end
        attr_accessor :export_type

        sig do
          returns(HubspotSDK::CRM::PublicExportViewRequest::Format::OrSymbol)
        end
        attr_accessor :format_

        sig do
          returns(HubspotSDK::CRM::PublicExportViewRequest::Language::OrSymbol)
        end
        attr_accessor :language

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

        sig { returns(T.nilable(HubspotSDK::CRM::PublicCRMSearchRequest)) }
        attr_reader :public_crm_search_request

        sig do
          params(
            public_crm_search_request:
              HubspotSDK::CRM::PublicCRMSearchRequest::OrHash
          ).void
        end
        attr_writer :public_crm_search_request

        sig do
          params(
            export_internal_values_options:
              T::Array[
                HubspotSDK::CRM::PublicExportViewRequest::ExportInternalValuesOption::OrSymbol
              ],
            export_name: String,
            export_type:
              HubspotSDK::CRM::PublicExportViewRequest::ExportType::OrSymbol,
            format_: HubspotSDK::CRM::PublicExportViewRequest::Format::OrSymbol,
            language:
              HubspotSDK::CRM::PublicExportViewRequest::Language::OrSymbol,
            object_properties: T::Array[String],
            object_type: String,
            override_associated_objects_per_definition_per_row_limit:
              T::Boolean,
            associated_object_type: String,
            public_crm_search_request:
              HubspotSDK::CRM::PublicCRMSearchRequest::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          export_internal_values_options:,
          export_name:,
          export_type:,
          format_:,
          language:,
          object_properties:,
          object_type:,
          override_associated_objects_per_definition_per_row_limit:,
          associated_object_type: nil,
          public_crm_search_request: nil
        )
        end

        sig do
          override.returns(
            {
              export_internal_values_options:
                T::Array[
                  HubspotSDK::CRM::PublicExportViewRequest::ExportInternalValuesOption::OrSymbol
                ],
              export_name: String,
              export_type:
                HubspotSDK::CRM::PublicExportViewRequest::ExportType::OrSymbol,
              format_:
                HubspotSDK::CRM::PublicExportViewRequest::Format::OrSymbol,
              language:
                HubspotSDK::CRM::PublicExportViewRequest::Language::OrSymbol,
              object_properties: T::Array[String],
              object_type: String,
              override_associated_objects_per_definition_per_row_limit:
                T::Boolean,
              associated_object_type: String,
              public_crm_search_request: HubspotSDK::CRM::PublicCRMSearchRequest
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
                HubspotSDK::CRM::PublicExportViewRequest::ExportInternalValuesOption
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAMES =
            T.let(
              :NAMES,
              HubspotSDK::CRM::PublicExportViewRequest::ExportInternalValuesOption::TaggedSymbol
            )
          VALUES =
            T.let(
              :VALUES,
              HubspotSDK::CRM::PublicExportViewRequest::ExportInternalValuesOption::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicExportViewRequest::ExportInternalValuesOption::TaggedSymbol
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
                HubspotSDK::CRM::PublicExportViewRequest::ExportType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIEW =
            T.let(
              :VIEW,
              HubspotSDK::CRM::PublicExportViewRequest::ExportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicExportViewRequest::ExportType::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::CRM::PublicExportViewRequest::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          XLS =
            T.let(
              :XLS,
              HubspotSDK::CRM::PublicExportViewRequest::Format::TaggedSymbol
            )
          XLSX =
            T.let(
              :XLSX,
              HubspotSDK::CRM::PublicExportViewRequest::Format::TaggedSymbol
            )
          CSV =
            T.let(
              :CSV,
              HubspotSDK::CRM::PublicExportViewRequest::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicExportViewRequest::Format::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::CRM::PublicExportViewRequest::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN =
            T.let(
              :EN,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          FR =
            T.let(
              :FR,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          JA =
            T.let(
              :JA,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          NL =
            T.let(
              :NL,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :PT_BR,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          IT =
            T.let(
              :IT,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          PL =
            T.let(
              :PL,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          SV =
            T.let(
              :SV,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          FI =
            T.let(
              :FI,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :ZH_TW,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :DA_DK,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )
          NO =
            T.let(
              :NO,
              HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicExportViewRequest::Language::TaggedSymbol
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
