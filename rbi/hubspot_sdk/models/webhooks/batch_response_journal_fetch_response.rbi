# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class BatchResponseJournalFetchResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The date and time when the batch operation was completed, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array of results from the batch operation, each represented as a
        # JournalFetchResponse object.
        sig { returns(T::Array[HubSpotSDK::Webhooks::JournalFetchResponse]) }
        attr_accessor :results

        # The date and time when the batch operation started, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation. Valid values include 'PENDING',
        # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
        sig do
          returns(
            HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A map of link names to associated URIs related to the batch operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The date and time when the batch operation was requested, in ISO 8601 format.
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
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the batch operation was completed, in ISO 8601 format.
          completed_at:,
          # An array of results from the batch operation, each represented as a
          # JournalFetchResponse object.
          results:,
          # The date and time when the batch operation started, in ISO 8601 format.
          started_at:,
          # The current status of the batch operation. Valid values include 'PENDING',
          # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
          status:,
          # A map of link names to associated URIs related to the batch operation.
          links: nil,
          # The date and time when the batch operation was requested, in ISO 8601 format.
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
                HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation. Valid values include 'PENDING',
        # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse::Status::TaggedSymbol
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
