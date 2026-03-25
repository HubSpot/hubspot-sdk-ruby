# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicStatusBulkResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse,
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
              HubspotSDK::CommunicationPreferences::PublicStatusBulkResponse
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
            HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # An array of errors encountered during the batch operation, each represented by a
        # StandardError object.
        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # A collection of related links associated with the batch response.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors encountered during the batch operation, represented as an
        # integer.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

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
                HubspotSDK::CommunicationPreferences::PublicStatusBulkResponse::OrHash
              ],
            started_at: Time,
            status:
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
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
          # An array of errors encountered during the batch operation, each represented by a
          # StandardError object.
          errors: nil,
          # A collection of related links associated with the batch response.
          links: nil,
          # The number of errors encountered during the batch operation, represented as an
          # integer.
          num_errors: nil,
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
                  HubspotSDK::CommunicationPreferences::PublicStatusBulkResponse
                ],
              started_at: Time,
              status:
                HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
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
                HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse::Status::TaggedSymbol
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
