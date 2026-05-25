# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicExportViewRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicExportViewRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :associated_object_type

        sig do
          returns(
            T::Array[
              HubSpotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::OrSymbol
            ]
          )
        end
        attr_accessor :export_internal_values_options

        sig { returns(String) }
        attr_accessor :export_name

        sig do
          returns(
            HubSpotSDK::Crm::PublicExportViewRequest::ExportType::OrSymbol
          )
        end
        attr_accessor :export_type

        sig do
          returns(HubSpotSDK::Crm::PublicExportViewRequest::Format::OrSymbol)
        end
        attr_accessor :format_

        sig { returns(T::Boolean) }
        attr_accessor :include_labeled_associations

        sig { returns(T::Boolean) }
        attr_accessor :include_primary_display_property_for_associated_objects

        sig do
          returns(HubSpotSDK::Crm::PublicExportViewRequest::Language::OrSymbol)
        end
        attr_accessor :language

        sig { returns(T::Array[String]) }
        attr_accessor :object_properties

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(T::Boolean) }
        attr_accessor :override_associated_objects_per_definition_per_row_limit

        sig { returns(T.nilable(HubSpotSDK::Crm::PublicCrmSearchRequest)) }
        attr_reader :public_crm_search_request

        sig do
          params(
            public_crm_search_request:
              HubSpotSDK::Crm::PublicCrmSearchRequest::OrHash
          ).void
        end
        attr_writer :public_crm_search_request

        sig do
          params(
            associated_object_type: T::Array[String],
            export_internal_values_options:
              T::Array[
                HubSpotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::OrSymbol
              ],
            export_name: String,
            export_type:
              HubSpotSDK::Crm::PublicExportViewRequest::ExportType::OrSymbol,
            format_: HubSpotSDK::Crm::PublicExportViewRequest::Format::OrSymbol,
            include_labeled_associations: T::Boolean,
            include_primary_display_property_for_associated_objects: T::Boolean,
            language:
              HubSpotSDK::Crm::PublicExportViewRequest::Language::OrSymbol,
            object_properties: T::Array[String],
            object_type: String,
            override_associated_objects_per_definition_per_row_limit:
              T::Boolean,
            public_crm_search_request:
              HubSpotSDK::Crm::PublicCrmSearchRequest::OrHash
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
          object_properties:,
          object_type:,
          override_associated_objects_per_definition_per_row_limit:,
          public_crm_search_request: nil
        )
        end

        sig do
          override.returns(
            {
              associated_object_type: T::Array[String],
              export_internal_values_options:
                T::Array[
                  HubSpotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::OrSymbol
                ],
              export_name: String,
              export_type:
                HubSpotSDK::Crm::PublicExportViewRequest::ExportType::OrSymbol,
              format_:
                HubSpotSDK::Crm::PublicExportViewRequest::Format::OrSymbol,
              include_labeled_associations: T::Boolean,
              include_primary_display_property_for_associated_objects:
                T::Boolean,
              language:
                HubSpotSDK::Crm::PublicExportViewRequest::Language::OrSymbol,
              object_properties: T::Array[String],
              object_type: String,
              override_associated_objects_per_definition_per_row_limit:
                T::Boolean,
              public_crm_search_request: HubSpotSDK::Crm::PublicCrmSearchRequest
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
                HubSpotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAMES =
            T.let(
              :NAMES,
              HubSpotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::TaggedSymbol
            )
          VALUES =
            T.let(
              :VALUES,
              HubSpotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportViewRequest::ExportInternalValuesOption::TaggedSymbol
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
                HubSpotSDK::Crm::PublicExportViewRequest::ExportType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIEW =
            T.let(
              :VIEW,
              HubSpotSDK::Crm::PublicExportViewRequest::ExportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportViewRequest::ExportType::TaggedSymbol
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
              T.all(Symbol, HubSpotSDK::Crm::PublicExportViewRequest::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CSV =
            T.let(
              :CSV,
              HubSpotSDK::Crm::PublicExportViewRequest::Format::TaggedSymbol
            )
          XLS =
            T.let(
              :XLS,
              HubSpotSDK::Crm::PublicExportViewRequest::Format::TaggedSymbol
            )
          XLSX =
            T.let(
              :XLSX,
              HubSpotSDK::Crm::PublicExportViewRequest::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportViewRequest::Format::TaggedSymbol
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
              T.all(Symbol, HubSpotSDK::Crm::PublicExportViewRequest::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AF_ZA =
            T.let(
              :AF_ZA,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :AR_EG,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          BG =
            T.let(
              :BG,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          BN =
            T.let(
              :BN,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :CA_ES,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          CS =
            T.let(
              :CS,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :DA_DK,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :EL_GR,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          EN =
            T.let(
              :EN,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :EN_GB,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :ES_MX,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :ET_EE,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          FI =
            T.let(
              :FI,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          FR =
            T.let(
              :FR,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :FR_CA,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :HE_IL,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :HI_IN,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          HR =
            T.let(
              :HR,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          HU =
            T.let(
              :HU,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          ID =
            T.let(
              :ID,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          IT =
            T.let(
              :IT,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          JA =
            T.let(
              :JA,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :KO_KR,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :LT_LT,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          MS =
            T.let(
              :MS,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          NL =
            T.let(
              :NL,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          NO =
            T.let(
              :NO,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          PL =
            T.let(
              :PL,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :PT_BR,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :PT_PT,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          RO =
            T.let(
              :RO,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          RU =
            T.let(
              :RU,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :SK_SK,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          SL =
            T.let(
              :SL,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          SV =
            T.let(
              :SV,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          TH =
            T.let(
              :TH,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          TL =
            T.let(
              :TL,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          TR =
            T.let(
              :TR,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          UK =
            T.let(
              :UK,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :VI_VN,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :ZH_CN,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :ZH_HK,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :ZH_TW,
              HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportViewRequest::Language::TaggedSymbol
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
