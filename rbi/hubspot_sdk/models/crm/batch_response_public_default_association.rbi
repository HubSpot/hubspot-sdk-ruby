# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class BatchResponsePublicDefaultAssociation < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The timestamp when the batch process was completed, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubSpotSDK::Crm::PublicDefaultAssociation]) }
        attr_accessor :results

        # The timestamp when the batch process began execution, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :started_at

        # The status of the batch processing request: "PENDING", "PROCESSING",
        # "CANCELLED", or "COMPLETE".
        sig do
          returns(
            HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # An object containing relevant links related to the batch request.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors encountered during the batch processing.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The timestamp when the batch process was initiated, in ISO 8601 format.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        # The response returned after performing a batch operation on associations.
        sig do
          params(
            completed_at: Time,
            results:
              T::Array[HubSpotSDK::Crm::PublicDefaultAssociation::OrHash],
            started_at: Time,
            status:
              HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
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
          # The status of the batch processing request: "PENDING", "PROCESSING",
          # "CANCELLED", or "COMPLETE".
          status:,
          errors: nil,
          # An object containing relevant links related to the batch request.
          links: nil,
          # The number of errors encountered during the batch processing.
          num_errors: nil,
          # The timestamp when the batch process was initiated, in ISO 8601 format.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubSpotSDK::Crm::PublicDefaultAssociation],
              started_at: Time,
              status:
                HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation::Status::TaggedSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the batch processing request: "PENDING", "PROCESSING",
        # "CANCELLED", or "COMPLETE".
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation::Status::TaggedSymbol
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
