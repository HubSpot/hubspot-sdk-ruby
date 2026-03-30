# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class SnapshotStatusResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::SnapshotStatusResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :initiated_at

        sig do
          returns(
            HubspotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(Integer)) }
        attr_reader :completed_at

        sig { params(completed_at: Integer).void }
        attr_writer :completed_at

        sig do
          returns(
            T.nilable(
              HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )
          )
        end
        attr_reader :error_code

        sig do
          params(
            error_code:
              HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::OrSymbol
          ).void
        end
        attr_writer :error_code

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig do
          params(
            id: String,
            initiated_at: Integer,
            status:
              HubspotSDK::Webhooks::SnapshotStatusResponse::Status::OrSymbol,
            completed_at: Integer,
            error_code:
              HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::OrSymbol,
            message: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          initiated_at:,
          status:,
          completed_at: nil,
          error_code: nil,
          message: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              initiated_at: Integer,
              status:
                HubspotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol,
              completed_at: Integer,
              error_code:
                HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol,
              message: String
            }
          )
        end
        def to_hash
        end

        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Webhooks::SnapshotStatusResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMPLETED =
            T.let(
              :COMPLETED,
              HubspotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :EXPIRED,
              HubspotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              HubspotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :IN_PROGRESS,
              HubspotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Webhooks::SnapshotStatusResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ErrorCode
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNAL_ERROR =
            T.let(
              :INTERNAL_ERROR,
              HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )
          PERMISSION_DENIED =
            T.let(
              :PERMISSION_DENIED,
              HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )
          TIMEOUT =
            T.let(
              :TIMEOUT,
              HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )
          VALIDATION_ERROR =
            T.let(
              :VALIDATION_ERROR,
              HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Webhooks::SnapshotStatusResponse::ErrorCode::TaggedSymbol
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
