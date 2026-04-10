# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicImportResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicImportResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for this import.
        sig { returns(String) }
        attr_accessor :id

        # The timestamp when the object was created, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Array[String]) }
        attr_accessor :mapped_object_type_ids

        sig { returns(HubSpotSDK::Crm::PublicImportMetadata) }
        attr_reader :metadata

        sig do
          params(metadata: HubSpotSDK::Crm::PublicImportMetadata::OrHash).void
        end
        attr_writer :metadata

        # Whether or not the import is a list of people disqualified from receiving
        # emails.
        sig { returns(T::Boolean) }
        attr_accessor :opt_out_import

        # The status of the import.
        sig do
          returns(HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol)
        end
        attr_accessor :state

        # The timestamp when the import record was last updated, formatted as an ISO 8601
        # instant.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The user-provided name for this import.
        sig { returns(T.nilable(String)) }
        attr_reader :import_name

        sig { params(import_name: String).void }
        attr_writer :import_name

        # The complete import request configuration as a JSON object.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :import_request_json

        sig { params(import_request_json: T.anything).void }
        attr_writer :import_request_json

        # Indicates where/how the import was initiated.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          )
        end
        attr_reader :import_source

        sig do
          params(
            import_source:
              HubSpotSDK::Crm::PublicImportResponse::ImportSource::OrSymbol
          ).void
        end
        attr_writer :import_source

        sig { returns(T.nilable(HubSpotSDK::Crm::ImportTemplate)) }
        attr_reader :import_template

        sig do
          params(import_template: HubSpotSDK::Crm::ImportTemplate::OrHash).void
        end
        attr_writer :import_template

        sig do
          params(
            id: String,
            created_at: Time,
            mapped_object_type_ids: T::Array[String],
            metadata: HubSpotSDK::Crm::PublicImportMetadata::OrHash,
            opt_out_import: T::Boolean,
            state: HubSpotSDK::Crm::PublicImportResponse::State::OrSymbol,
            updated_at: Time,
            import_name: String,
            import_request_json: T.anything,
            import_source:
              HubSpotSDK::Crm::PublicImportResponse::ImportSource::OrSymbol,
            import_template: HubSpotSDK::Crm::ImportTemplate::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for this import.
          id:,
          # The timestamp when the object was created, in ISO 8601 format.
          created_at:,
          mapped_object_type_ids:,
          metadata:,
          # Whether or not the import is a list of people disqualified from receiving
          # emails.
          opt_out_import:,
          # The status of the import.
          state:,
          # The timestamp when the import record was last updated, formatted as an ISO 8601
          # instant.
          updated_at:,
          # The user-provided name for this import.
          import_name: nil,
          # The complete import request configuration as a JSON object.
          import_request_json: nil,
          # Indicates where/how the import was initiated.
          import_source: nil,
          import_template: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              mapped_object_type_ids: T::Array[String],
              metadata: HubSpotSDK::Crm::PublicImportMetadata,
              opt_out_import: T::Boolean,
              state: HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol,
              updated_at: Time,
              import_name: String,
              import_request_json: T.anything,
              import_source:
                HubSpotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol,
              import_template: HubSpotSDK::Crm::ImportTemplate
            }
          )
        end
        def to_hash
        end

        # The status of the import.
        module State
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicImportResponse::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          DEFERRED =
            T.let(
              :DEFERRED,
              HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          DONE =
            T.let(
              :DONE,
              HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          REVERTED =
            T.let(
              :REVERTED,
              HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          STARTED =
            T.let(
              :STARTED,
              HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicImportResponse::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Indicates where/how the import was initiated.
        module ImportSource
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicImportResponse::ImportSource)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          API =
            T.let(
              :API,
              HubSpotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          CRM_UI =
            T.let(
              :CRM_UI,
              HubSpotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubSpotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          MOBILE_ANDROID =
            T.let(
              :MOBILE_ANDROID,
              HubSpotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          MOBILE_IOS =
            T.let(
              :MOBILE_IOS,
              HubSpotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          SALESFORCE =
            T.let(
              :SALESFORCE,
              HubSpotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
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
