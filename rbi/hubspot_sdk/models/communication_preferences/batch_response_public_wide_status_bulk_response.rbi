# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicWideStatusBulkResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse,
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
              HubspotSDK::CommunicationPreferences::PublicWideStatusBulkResponse
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
            HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status::TaggedSymbol
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
                HubspotSDK::CommunicationPreferences::PublicWideStatusBulkResponse::OrHash
              ],
            started_at: Time,
            status:
              HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status::OrSymbol,
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
                  HubspotSDK::CommunicationPreferences::PublicWideStatusBulkResponse
                ],
              started_at: Time,
              status:
                HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status::TaggedSymbol,
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
                HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status::TaggedSymbol
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
