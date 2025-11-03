# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicExportResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicExportResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(HubspotSDK::Crm::PublicExportResponse::ExportState::OrSymbol)
        end
        attr_accessor :export_state

        sig do
          returns(HubspotSDK::Crm::PublicExportResponse::ExportType::OrSymbol)
        end
        attr_accessor :export_type

        sig { returns(T::Array[String]) }
        attr_accessor :object_properties

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :export_name

        sig { params(export_name: String).void }
        attr_writer :export_name

        sig { returns(T.nilable(Integer)) }
        attr_reader :record_count

        sig { params(record_count: Integer).void }
        attr_writer :record_count

        sig do
          params(
            id: String,
            created_at: Time,
            export_state:
              HubspotSDK::Crm::PublicExportResponse::ExportState::OrSymbol,
            export_type:
              HubspotSDK::Crm::PublicExportResponse::ExportType::OrSymbol,
            object_properties: T::Array[String],
            object_type: String,
            updated_at: Time,
            export_name: String,
            record_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          export_state:,
          export_type:,
          object_properties:,
          object_type:,
          updated_at:,
          export_name: nil,
          record_count: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              export_state:
                HubspotSDK::Crm::PublicExportResponse::ExportState::OrSymbol,
              export_type:
                HubspotSDK::Crm::PublicExportResponse::ExportType::OrSymbol,
              object_properties: T::Array[String],
              object_type: String,
              updated_at: Time,
              export_name: String,
              record_count: Integer
            }
          )
        end
        def to_hash
        end

        module ExportState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicExportResponse::ExportState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENQUEUED =
            T.let(
              :ENQUEUED,
              HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          DONE =
            T.let(
              :DONE,
              HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          CONFLICT =
            T.let(
              :CONFLICT,
              HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          DELETED =
            T.let(
              :DELETED,
              HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          DEFERRED =
            T.let(
              :DEFERRED,
              HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          PENDING_APPROVAL =
            T.let(
              :PENDING_APPROVAL,
              HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::Crm::PublicExportResponse::ExportType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIEW =
            T.let(
              :VIEW,
              HubspotSDK::Crm::PublicExportResponse::ExportType::TaggedSymbol
            )
          LIST =
            T.let(
              :LIST,
              HubspotSDK::Crm::PublicExportResponse::ExportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicExportResponse::ExportType::TaggedSymbol
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
