# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicExportViewRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicExportViewRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::OrSymbol
            ]
          )
        end
        attr_accessor :export_internal_values_options

        sig { returns(String) }
        attr_accessor :export_name

        sig do
          returns(
            HubspotSDK::Crm::PublicExportViewRequest::ExportType::OrSymbol
          )
        end
        attr_accessor :export_type

        sig do
          returns(HubspotSDK::Crm::PublicExportViewRequest::Format::OrSymbol)
        end
        attr_accessor :format_

        sig do
          returns(HubspotSDK::Crm::PublicExportViewRequest::Language::OrSymbol)
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

        sig { returns(T.nilable(HubspotSDK::Crm::PublicCrmSearchRequest)) }
        attr_reader :public_crm_search_request

        sig do
          params(
            public_crm_search_request:
              HubspotSDK::Crm::PublicCrmSearchRequest::OrHash
          ).void
        end
        attr_writer :public_crm_search_request

        sig do
          params(
            export_internal_values_options:
              T::Array[
                HubspotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::OrSymbol
              ],
            export_name: String,
            export_type:
              HubspotSDK::Crm::PublicExportViewRequest::ExportType::OrSymbol,
            format_: HubspotSDK::Crm::PublicExportViewRequest::Format::OrSymbol,
            language:
              HubspotSDK::Crm::PublicExportViewRequest::Language::OrSymbol,
            object_properties: T::Array[String],
            object_type: String,
            override_associated_objects_per_definition_per_row_limit:
              T::Boolean,
            associated_object_type: String,
            public_crm_search_request:
              HubspotSDK::Crm::PublicCrmSearchRequest::OrHash
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
                  HubspotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::OrSymbol
                ],
              export_name: String,
              export_type:
                HubspotSDK::Crm::PublicExportViewRequest::ExportType::OrSymbol,
              format_:
                HubspotSDK::Crm::PublicExportViewRequest::Format::OrSymbol,
              language:
                HubspotSDK::Crm::PublicExportViewRequest::Language::OrSymbol,
              object_properties: T::Array[String],
              object_type: String,
              override_associated_objects_per_definition_per_row_limit:
                T::Boolean,
              associated_object_type: String,
              public_crm_search_request: HubspotSDK::Crm::PublicCrmSearchRequest
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
                HubspotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAMES =
            T.let(
              :NAMES,
              HubspotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::TaggedSymbol
            )
          VALUES =
            T.let(
              :VALUES,
              HubspotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::TaggedSymbol
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
                HubspotSDK::Crm::PublicExportViewRequest::ExportType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIEW =
            T.let(
              :VIEW,
              HubspotSDK::Crm::PublicExportViewRequest::ExportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportViewRequest::ExportType::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::Crm::PublicExportViewRequest::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          XLS =
            T.let(
              :XLS,
              HubspotSDK::Crm::PublicExportViewRequest::Format::TaggedSymbol
            )
          XLSX =
            T.let(
              :XLSX,
              HubspotSDK::Crm::PublicExportViewRequest::Format::TaggedSymbol
            )
          CSV =
            T.let(
              :CSV,
              HubspotSDK::Crm::PublicExportViewRequest::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportViewRequest::Format::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::Crm::PublicExportViewRequest::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN =
            T.let(
              :EN,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          FR =
            T.let(
              :FR,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          JA =
            T.let(
              :JA,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          NL =
            T.let(
              :NL,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :PT_BR,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          IT =
            T.let(
              :IT,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          PL =
            T.let(
              :PL,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          SV =
            T.let(
              :SV,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          FI =
            T.let(
              :FI,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :ZH_TW,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :DA_DK,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          NO =
            T.let(
              :NO,
              HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
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
