# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class BatchResponseJournalFetchResponseWithErrors < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The date and time when the batch process was completed, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array of journal fetch responses, each representing a result from the batch
        # process.
        sig { returns(T::Array[HubSpotSDK::Webhooks::JournalFetchResponse]) }
        attr_accessor :results

        # The date and time when the batch process started, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch process. Valid values include 'PENDING',
        # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
        sig do
          returns(
            HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        # An array of standard errors that occurred during the batch process, providing
        # details about each error.
        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # A map of link names to associated URIs, providing additional context or actions
        # related to the batch process.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors that occurred during the batch process.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The date and time when the batch request was made, in ISO 8601 format.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[HubSpotSDK::Webhooks::JournalFetchResponse::OrHash],
            started_at: Time,
            status:
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the batch process was completed, in ISO 8601 format.
          completed_at:,
          # An array of journal fetch responses, each representing a result from the batch
          # process.
          results:,
          # The date and time when the batch process started, in ISO 8601 format.
          started_at:,
          # The current status of the batch process. Valid values include 'PENDING',
          # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
          status:,
          # An array of standard errors that occurred during the batch process, providing
          # details about each error.
          errors: nil,
          # A map of link names to associated URIs, providing additional context or actions
          # related to the batch process.
          links: nil,
          # The number of errors that occurred during the batch process.
          num_errors: nil,
          # The date and time when the batch request was made, in ISO 8601 format.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubSpotSDK::Webhooks::JournalFetchResponse],
              started_at: Time,
              status:
                HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status::OrSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch process. Valid values include 'PENDING',
        # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status::TaggedSymbol
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
