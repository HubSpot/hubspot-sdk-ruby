# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicStatusBulkResponseWithErrors < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The date and time when the operation was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array containing the results of the operation.
        sig do
          returns(
            T::Array[
              HubspotSDK::CommunicationPreferences::PublicStatusBulkResponse
            ]
          )
        end
        attr_accessor :results

        # The date and time when the operation started.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the operation, which can be PENDING, PROCESSING, CANCELED,
        # or COMPLETE.
        sig do
          returns(
            HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        # An array of error objects detailing any issues encountered during the operation.
        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # An object containing related links, where each key is a link name and each value
        # is a URL.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors encountered during the operation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The date and time when the request was made.
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
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the operation was completed.
          completed_at:,
          # An array containing the results of the operation.
          results:,
          # The date and time when the operation started.
          started_at:,
          # The current status of the operation, which can be PENDING, PROCESSING, CANCELED,
          # or COMPLETE.
          status:,
          # An array of error objects detailing any issues encountered during the operation.
          errors: nil,
          # An object containing related links, where each key is a link name and each value
          # is a URL.
          links: nil,
          # The number of errors encountered during the operation.
          num_errors: nil,
          # The date and time when the request was made.
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
                HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors::Status::OrSymbol,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the operation, which can be PENDING, PROCESSING, CANCELED,
        # or COMPLETE.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponseWithErrors::Status::TaggedSymbol
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
