# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicImportResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicImportResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Array[String]) }
        attr_accessor :mapped_object_type_ids

        sig { returns(HubspotSDK::CRM::PublicImportMetadata) }
        attr_reader :metadata

        sig do
          params(metadata: HubspotSDK::CRM::PublicImportMetadata::OrHash).void
        end
        attr_writer :metadata

        # Whether or not the import is a list of people disqualified from receiving
        # emails.
        sig { returns(T::Boolean) }
        attr_accessor :opt_out_import

        # The status of the import.
        sig do
          returns(HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol)
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
              HubspotSDK::CRM::PublicImportResponse::ImportSource::TaggedSymbol
            )
          )
        end
        attr_reader :import_source

        sig do
          params(
            import_source:
              HubspotSDK::CRM::PublicImportResponse::ImportSource::OrSymbol
          ).void
        end
        attr_writer :import_source

        sig { returns(T.nilable(HubspotSDK::CRM::ImportTemplate)) }
        attr_reader :import_template

        sig do
          params(import_template: HubspotSDK::CRM::ImportTemplate::OrHash).void
        end
        attr_writer :import_template

        sig do
          params(
            id: String,
            created_at: Time,
            mapped_object_type_ids: T::Array[String],
            metadata: HubspotSDK::CRM::PublicImportMetadata::OrHash,
            opt_out_import: T::Boolean,
            state: HubspotSDK::CRM::PublicImportResponse::State::OrSymbol,
            updated_at: Time,
            import_name: String,
            import_request_json: T.anything,
            import_source:
              HubspotSDK::CRM::PublicImportResponse::ImportSource::OrSymbol,
            import_template: HubspotSDK::CRM::ImportTemplate::OrHash
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
              metadata: HubspotSDK::CRM::PublicImportMetadata,
              opt_out_import: T::Boolean,
              state: HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol,
              updated_at: Time,
              import_name: String,
              import_request_json: T.anything,
              import_source:
                HubspotSDK::CRM::PublicImportResponse::ImportSource::TaggedSymbol,
              import_template: HubspotSDK::CRM::ImportTemplate
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
              T.all(Symbol, HubspotSDK::CRM::PublicImportResponse::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STARTED =
            T.let(
              :STARTED,
              HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol
            )
          DONE =
            T.let(
              :DONE,
              HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol
            )
          DEFERRED =
            T.let(
              :DEFERRED,
              HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol
            )
          REVERTED =
            T.let(
              :REVERTED,
              HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicImportResponse::State::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::CRM::PublicImportResponse::ImportSource)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          API =
            T.let(
              :API,
              HubspotSDK::CRM::PublicImportResponse::ImportSource::TaggedSymbol
            )
          CRM_UI =
            T.let(
              :CRM_UI,
              HubspotSDK::CRM::PublicImportResponse::ImportSource::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::CRM::PublicImportResponse::ImportSource::TaggedSymbol
            )
          MOBILE_ANDROID =
            T.let(
              :MOBILE_ANDROID,
              HubspotSDK::CRM::PublicImportResponse::ImportSource::TaggedSymbol
            )
          MOBILE_IOS =
            T.let(
              :MOBILE_IOS,
              HubspotSDK::CRM::PublicImportResponse::ImportSource::TaggedSymbol
            )
          SALESFORCE =
            T.let(
              :SALESFORCE,
              HubspotSDK::CRM::PublicImportResponse::ImportSource::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicImportResponse::ImportSource::TaggedSymbol
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
