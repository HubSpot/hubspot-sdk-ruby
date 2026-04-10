# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicExportResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicExportResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique ID of the export.
        sig { returns(String) }
        attr_accessor :id

        # The timestamp when the export was created, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :created_at

        # The current state of the export process.
        sig do
          returns(
            HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
          )
        end
        attr_accessor :export_state

        # The type of export, which can be either VIEW or LIST.
        sig do
          returns(
            HubSpotSDK::Crm::PublicExportResponse::ExportType::TaggedSymbol
          )
        end
        attr_accessor :export_type

        # The list of properties exported for the associated object.
        sig { returns(T::Array[String]) }
        attr_accessor :object_properties

        # The associated CRM object being exported.
        sig { returns(String) }
        attr_accessor :object_type

        # The timestamp when the export was last updated, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The name assigned to the export.
        sig { returns(T.nilable(String)) }
        attr_reader :export_name

        sig { params(export_name: String).void }
        attr_writer :export_name

        # The total number of records included in the export.
        sig { returns(T.nilable(Integer)) }
        attr_reader :record_count

        sig { params(record_count: Integer).void }
        attr_writer :record_count

        sig do
          params(
            id: String,
            created_at: Time,
            export_state:
              HubSpotSDK::Crm::PublicExportResponse::ExportState::OrSymbol,
            export_type:
              HubSpotSDK::Crm::PublicExportResponse::ExportType::OrSymbol,
            object_properties: T::Array[String],
            object_type: String,
            updated_at: Time,
            export_name: String,
            record_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID of the export.
          id:,
          # The timestamp when the export was created, in ISO 8601 format.
          created_at:,
          # The current state of the export process.
          export_state:,
          # The type of export, which can be either VIEW or LIST.
          export_type:,
          # The list of properties exported for the associated object.
          object_properties:,
          # The associated CRM object being exported.
          object_type:,
          # The timestamp when the export was last updated, in ISO 8601 format.
          updated_at:,
          # The name assigned to the export.
          export_name: nil,
          # The total number of records included in the export.
          record_count: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              export_state:
                HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol,
              export_type:
                HubSpotSDK::Crm::PublicExportResponse::ExportType::TaggedSymbol,
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

        # The current state of the export process.
        module ExportState
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicExportResponse::ExportState)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          CONFLICT =
            T.let(
              :CONFLICT,
              HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          DEFERRED =
            T.let(
              :DEFERRED,
              HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          DELETED =
            T.let(
              :DELETED,
              HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          DONE =
            T.let(
              :DONE,
              HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          ENQUEUED =
            T.let(
              :ENQUEUED,
              HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          PENDING_APPROVAL =
            T.let(
              :PENDING_APPROVAL,
              HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportResponse::ExportState::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of export, which can be either VIEW or LIST.
        module ExportType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicExportResponse::ExportType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST =
            T.let(
              :LIST,
              HubSpotSDK::Crm::PublicExportResponse::ExportType::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubSpotSDK::Crm::PublicExportResponse::ExportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicExportResponse::ExportType::TaggedSymbol
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
