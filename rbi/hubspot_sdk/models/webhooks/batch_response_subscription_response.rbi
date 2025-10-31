# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class BatchResponseSubscriptionResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::BatchResponseSubscriptionResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The date and time when the batch operation was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        # The list of results from the batch operation.
        sig { returns(T::Array[HubspotSDK::Webhooks::SubscriptionResponse]) }
        attr_accessor :results

        # The date and time when the batch operation started.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, which can be PENDING, PROCESSING,
        # CANCELED, or COMPLETE.
        sig do
          returns(
            HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A collection of related links associated with the batch operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The date and time when the batch operation was requested.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results:
              T::Array[HubspotSDK::Webhooks::SubscriptionResponse::OrHash],
            started_at: Time,
            status:
              HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the batch operation was completed.
          completed_at:,
          # The list of results from the batch operation.
          results:,
          # The date and time when the batch operation started.
          started_at:,
          # The current status of the batch operation, which can be PENDING, PROCESSING,
          # CANCELED, or COMPLETE.
          status:,
          # A collection of related links associated with the batch operation.
          links: nil,
          # The date and time when the batch operation was requested.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubspotSDK::Webhooks::SubscriptionResponse],
              started_at: Time,
              status:
                HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation, which can be PENDING, PROCESSING,
        # CANCELED, or COMPLETE.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Webhooks::BatchResponseSubscriptionResponse::Status::TaggedSymbol
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
