# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicStatus < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The date and time when the batch operation was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array containing the results of the batch operation.
        sig do
          returns(T::Array[HubSpotSDK::CommunicationPreferences::PublicStatus])
        end
        attr_accessor :results

        # The date and time when the batch operation started.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, which can be PENDING, PROCESSING,
        # CANCELED, or COMPLETE.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # An array of error objects detailing any issues encountered.
        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # URLs linking to related resources or documentation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors encountered during the batch operation.
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
                HubSpotSDK::CommunicationPreferences::PublicStatus::OrHash
              ],
            started_at: Time,
            status:
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The date and time when the batch operation was completed.
          completed_at:,
          # An array containing the results of the batch operation.
          results:,
          # The date and time when the batch operation started.
          started_at:,
          # The current status of the batch operation, which can be PENDING, PROCESSING,
          # CANCELED, or COMPLETE.
          status:,
          # An array of error objects detailing any issues encountered.
          errors: nil,
          # URLs linking to related resources or documentation.
          links: nil,
          # The number of errors encountered during the batch operation.
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
                T::Array[HubSpotSDK::CommunicationPreferences::PublicStatus],
              started_at: Time,
              status:
                HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status::TaggedSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation, which can be PENDING, PROCESSING,
        # CANCELED, or COMPLETE.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status::TaggedSymbol
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
