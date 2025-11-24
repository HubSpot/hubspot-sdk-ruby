# typed: strong

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class BatchResponsePublicStatusBulkResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The date and time when the batch process was completed.
          sig { returns(Time) }
          attr_accessor :completed_at

          # The array of results from the batch process, each containing subscription status
          # information.
          sig do
            returns(
              T::Array[
                HubspotSDK::Marketing::Subscriptions::PublicStatusBulkResponse
              ]
            )
          end
          attr_accessor :results

          # The date and time when the batch process began.
          sig { returns(Time) }
          attr_accessor :started_at

          # The current status of the batch process, with possible values: PENDING,
          # PROCESSING, CANCELED, COMPLETE.
          sig do
            returns(
              HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # A collection of related links associated with the batch response.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :links

          sig { params(links: T::Hash[Symbol, String]).void }
          attr_writer :links

          # The date and time when the batch request was made.
          sig { returns(T.nilable(Time)) }
          attr_reader :requested_at

          sig { params(requested_at: Time).void }
          attr_writer :requested_at

          sig do
            params(
              completed_at: Time,
              results:
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::PublicStatusBulkResponse::OrHash
                ],
              started_at: Time,
              status:
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status::OrSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # The date and time when the batch process was completed.
            completed_at:,
            # The array of results from the batch process, each containing subscription status
            # information.
            results:,
            # The date and time when the batch process began.
            started_at:,
            # The current status of the batch process, with possible values: PENDING,
            # PROCESSING, CANCELED, COMPLETE.
            status:,
            # A collection of related links associated with the batch response.
            links: nil,
            # The date and time when the batch request was made.
            requested_at: nil
          )
          end

          sig do
            override.returns(
              {
                completed_at: Time,
                results:
                  T::Array[
                    HubspotSDK::Marketing::Subscriptions::PublicStatusBulkResponse
                  ],
                started_at: Time,
                status:
                  HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol,
                links: T::Hash[Symbol, String],
                requested_at: Time
              }
            )
          end
          def to_hash
          end

          # The current status of the batch process, with possible values: PENDING,
          # PROCESSING, CANCELED, COMPLETE.
          module Status
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CANCELED =
              T.let(
                :CANCELED,
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
              )
            COMPLETE =
              T.let(
                :COMPLETE,
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :PENDING,
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
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
end
