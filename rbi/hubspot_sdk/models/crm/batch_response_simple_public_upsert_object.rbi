# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchResponseSimplePublicUpsertObject < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The timestamp when the batch process was completed, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubspotSDK::Crm::SimplePublicUpsertObject]) }
        attr_accessor :results

        # The timestamp when the batch process began execution, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :started_at

        # The status of the batch processing request. Can be: "PENDING", "PROCESSING",
        # "CANCELED", or "COMPLETE".
        sig do
          returns(
            HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubspotSDK::Crm::StandardError])) }
        attr_reader :errors

        sig do
          params(errors: T::Array[HubspotSDK::Crm::StandardError::OrHash]).void
        end
        attr_writer :errors

        # An object containing relevant links related to the batch request.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The total number of errors that occurred during the operation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The timestamp when the batch process was initiated, in ISO 8601 format.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        # Represents the result of a batch upsert operation, including the operation’s
        # status, timestamps, and a list of successfully created or updated objects.
        sig do
          params(
            completed_at: Time,
            results:
              T::Array[HubspotSDK::Crm::SimplePublicUpsertObject::OrHash],
            started_at: Time,
            status:
              HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status::OrSymbol,
            errors: T::Array[HubspotSDK::Crm::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp when the batch process was completed, in ISO 8601 format.
          completed_at:,
          results:,
          # The timestamp when the batch process began execution, in ISO 8601 format.
          started_at:,
          # The status of the batch processing request. Can be: "PENDING", "PROCESSING",
          # "CANCELED", or "COMPLETE".
          status:,
          errors: nil,
          # An object containing relevant links related to the batch request.
          links: nil,
          # The total number of errors that occurred during the operation.
          num_errors: nil,
          # The timestamp when the batch process was initiated, in ISO 8601 format.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubspotSDK::Crm::SimplePublicUpsertObject],
              started_at: Time,
              status:
                HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status::TaggedSymbol,
              errors: T::Array[HubspotSDK::Crm::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the batch processing request. Can be: "PENDING", "PROCESSING",
        # "CANCELED", or "COMPLETE".
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject::Status::TaggedSymbol
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
