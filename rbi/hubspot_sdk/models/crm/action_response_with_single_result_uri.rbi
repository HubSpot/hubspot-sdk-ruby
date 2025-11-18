# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ActionResponseWithSingleResultUri < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ActionResponseWithSingleResultUri,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The timestamp when the export was completed, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :completed_at

        # The timestamp when the export process started, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the export, which can be PENDING, PROCESSING, COMPLETE or
        # CANCELED.
        sig do
          returns(
            HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # A collection of related links associated with the export.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors encountered during the export process.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The timestamp when the export request was made, in ISO 8601 format.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        # The URL of the resulting file if the export status is COMPLETE.
        sig { returns(T.nilable(String)) }
        attr_reader :result

        sig { params(result: String).void }
        attr_writer :result

        sig do
          params(
            completed_at: Time,
            started_at: Time,
            status:
              HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time,
            result: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp when the export was completed, in ISO 8601 format.
          completed_at:,
          # The timestamp when the export process started, in ISO 8601 format.
          started_at:,
          # The current status of the export, which can be PENDING, PROCESSING, COMPLETE or
          # CANCELED.
          status:,
          errors: nil,
          # A collection of related links associated with the export.
          links: nil,
          # The number of errors encountered during the export process.
          num_errors: nil,
          # The timestamp when the export request was made, in ISO 8601 format.
          requested_at: nil,
          # The URL of the resulting file if the export status is COMPLETE.
          result: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              started_at: Time,
              status:
                HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status::TaggedSymbol,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time,
              result: String
            }
          )
        end
        def to_hash
        end

        # The current status of the export, which can be PENDING, PROCESSING, COMPLETE or
        # CANCELED.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status::TaggedSymbol
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
