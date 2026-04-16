# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class SnapshotStatusResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::SnapshotStatusResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the snapshot operation, formatted as a UUID.
        sig { returns(String) }
        attr_accessor :id

        # A Unix timestamp in milliseconds indicating when the snapshot operation was
        # initiated.
        sig { returns(Integer) }
        attr_accessor :initiated_at

        # The current status of the snapshot operation. Valid values include 'PENDING',
        # 'IN_PROGRESS', 'COMPLETED', 'FAILED', and 'EXPIRED'.
        sig do
          returns(
            HubSpotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A Unix timestamp in milliseconds indicating when the snapshot operation was
        # completed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :completed_at

        sig { params(completed_at: Integer).void }
        attr_writer :completed_at

        # The code representing any error that occurred during the snapshot operation.
        # Possible values are 'TIMEOUT', 'VALIDATION_ERROR', 'INTERNAL_ERROR', and
        # 'PERMISSION_DENIED'.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )
          )
        end
        attr_reader :error_code

        sig do
          params(
            error_code:
              HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::OrSymbol
          ).void
        end
        attr_writer :error_code

        # A descriptive message providing additional information about the snapshot
        # operation or any errors encountered.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig do
          params(
            id: String,
            initiated_at: Integer,
            status:
              HubSpotSDK::Webhooks::SnapshotStatusResponse::Status::OrSymbol,
            completed_at: Integer,
            error_code:
              HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::OrSymbol,
            message: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the snapshot operation, formatted as a UUID.
          id:,
          # A Unix timestamp in milliseconds indicating when the snapshot operation was
          # initiated.
          initiated_at:,
          # The current status of the snapshot operation. Valid values include 'PENDING',
          # 'IN_PROGRESS', 'COMPLETED', 'FAILED', and 'EXPIRED'.
          status:,
          # A Unix timestamp in milliseconds indicating when the snapshot operation was
          # completed.
          completed_at: nil,
          # The code representing any error that occurred during the snapshot operation.
          # Possible values are 'TIMEOUT', 'VALIDATION_ERROR', 'INTERNAL_ERROR', and
          # 'PERMISSION_DENIED'.
          error_code: nil,
          # A descriptive message providing additional information about the snapshot
          # operation or any errors encountered.
          message: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              initiated_at: Integer,
              status:
                HubSpotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol,
              completed_at: Integer,
              error_code:
                HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol,
              message: String
            }
          )
        end
        def to_hash
        end

        # The current status of the snapshot operation. Valid values include 'PENDING',
        # 'IN_PROGRESS', 'COMPLETED', 'FAILED', and 'EXPIRED'.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Webhooks::SnapshotStatusResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPLETED =
            T.let(
              :COMPLETED,
              HubSpotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :EXPIRED,
              HubSpotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              HubSpotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :IN_PROGRESS,
              HubSpotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The code representing any error that occurred during the snapshot operation.
        # Possible values are 'TIMEOUT', 'VALIDATION_ERROR', 'INTERNAL_ERROR', and
        # 'PERMISSION_DENIED'.
        module ErrorCode
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNAL_ERROR =
            T.let(
              :INTERNAL_ERROR,
              HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )
          PERMISSION_DENIED =
            T.let(
              :PERMISSION_DENIED,
              HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )
          TIMEOUT =
            T.let(
              :TIMEOUT,
              HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )
          VALIDATION_ERROR =
            T.let(
              :VALIDATION_ERROR,
              HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
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
