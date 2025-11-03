# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicImportResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicImportResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Array[String]) }
        attr_accessor :mapped_object_type_ids

        sig { returns(HubspotSDK::Crm::PublicImportMetadata) }
        attr_reader :metadata

        sig do
          params(metadata: HubspotSDK::Crm::PublicImportMetadata::OrHash).void
        end
        attr_writer :metadata

        # Whether or not the import is a list of people disqualified from receiving
        # emails.
        sig { returns(T::Boolean) }
        attr_accessor :opt_out_import

        # The status of the import.
        sig do
          returns(HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol)
        end
        attr_accessor :state

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :import_name

        sig { params(import_name: String).void }
        attr_writer :import_name

        sig { returns(T.nilable(T.anything)) }
        attr_reader :import_request_json

        sig { params(import_request_json: T.anything).void }
        attr_writer :import_request_json

        sig do
          returns(
            T.nilable(
              HubspotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          )
        end
        attr_reader :import_source

        sig do
          params(
            import_source:
              HubspotSDK::Crm::PublicImportResponse::ImportSource::OrSymbol
          ).void
        end
        attr_writer :import_source

        sig { returns(T.nilable(HubspotSDK::Crm::ImportTemplate)) }
        attr_reader :import_template

        sig do
          params(import_template: HubspotSDK::Crm::ImportTemplate::OrHash).void
        end
        attr_writer :import_template

        sig do
          params(
            id: String,
            created_at: Time,
            mapped_object_type_ids: T::Array[String],
            metadata: HubspotSDK::Crm::PublicImportMetadata::OrHash,
            opt_out_import: T::Boolean,
            state: HubspotSDK::Crm::PublicImportResponse::State::OrSymbol,
            updated_at: Time,
            import_name: String,
            import_request_json: T.anything,
            import_source:
              HubspotSDK::Crm::PublicImportResponse::ImportSource::OrSymbol,
            import_template: HubspotSDK::Crm::ImportTemplate::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          mapped_object_type_ids:,
          metadata:,
          # Whether or not the import is a list of people disqualified from receiving
          # emails.
          opt_out_import:,
          # The status of the import.
          state:,
          updated_at:,
          import_name: nil,
          import_request_json: nil,
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
              metadata: HubspotSDK::Crm::PublicImportMetadata,
              opt_out_import: T::Boolean,
              state: HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol,
              updated_at: Time,
              import_name: String,
              import_request_json: T.anything,
              import_source:
                HubspotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol,
              import_template: HubspotSDK::Crm::ImportTemplate
            }
          )
        end
        def to_hash
        end

        # The status of the import.
        module State
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicImportResponse::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STARTED =
            T.let(
              :STARTED,
              HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          DONE =
            T.let(
              :DONE,
              HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          DEFERRED =
            T.let(
              :DEFERRED,
              HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )
          REVERTED =
            T.let(
              :REVERTED,
              HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicImportResponse::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ImportSource
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicImportResponse::ImportSource)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          API =
            T.let(
              :API,
              HubspotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          CRM_UI =
            T.let(
              :CRM_UI,
              HubspotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          MOBILE_ANDROID =
            T.let(
              :MOBILE_ANDROID,
              HubspotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          MOBILE_IOS =
            T.let(
              :MOBILE_IOS,
              HubspotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )
          SALESFORCE =
            T.let(
              :SALESFORCE,
              HubspotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicImportResponse::ImportSource::TaggedSymbol
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
