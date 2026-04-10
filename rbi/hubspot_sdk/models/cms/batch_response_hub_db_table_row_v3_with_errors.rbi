# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BatchResponseHubDBTableRowV3WithErrors < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The timestamp indicating when the batch processing was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubSpotSDK::Cms::HubDBTableRowV3]) }
        attr_accessor :results

        # The timestamp indicating when the batch processing began.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        sig do
          returns(
            HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # A collection of related links associated with the batch response.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors encountered during the batch operation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The timestamp indicating when the batch request was made.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results: T::Array[HubSpotSDK::Cms::HubDBTableRowV3::OrHash],
            started_at: Time,
            status:
              HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp indicating when the batch processing was completed.
          completed_at:,
          results:,
          # The timestamp indicating when the batch processing began.
          started_at:,
          # The current status of the batch operation, with possible values: CANCELED,
          # COMPLETE, PENDING, PROCESSING.
          status:,
          errors: nil,
          # A collection of related links associated with the batch response.
          links: nil,
          # The number of errors encountered during the batch operation.
          num_errors: nil,
          # The timestamp indicating when the batch request was made.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubSpotSDK::Cms::HubDBTableRowV3],
              started_at: Time,
              status:
                HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors::Status::OrSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::BatchResponseHubDBTableRowV3WithErrors::Status::TaggedSymbol
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
