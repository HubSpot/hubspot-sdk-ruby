# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BatchResponseContentFolderWithErrors < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BatchResponseContentFolderWithErrors,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Time of batch operation completion.
        sig { returns(Time) }
        attr_accessor :completed_at

        # Results of batch operation.
        sig { returns(T::Array[HubSpotSDK::Cms::ContentFolder]) }
        attr_accessor :results

        # Time of batch operation start.
        sig { returns(Time) }
        attr_accessor :started_at

        # Status of batch operation.
        sig do
          returns(
            HubSpotSDK::Cms::BatchResponseContentFolderWithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        # Errors in batch operation.
        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # Links associated with batch operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # Number of errors.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # Time of batch operation request.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results: T::Array[HubSpotSDK::Cms::ContentFolder::OrHash],
            started_at: Time,
            status:
              HubSpotSDK::Cms::BatchResponseContentFolderWithErrors::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Time of batch operation completion.
          completed_at:,
          # Results of batch operation.
          results:,
          # Time of batch operation start.
          started_at:,
          # Status of batch operation.
          status:,
          # Errors in batch operation.
          errors: nil,
          # Links associated with batch operation.
          links: nil,
          # Number of errors.
          num_errors: nil,
          # Time of batch operation request.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubSpotSDK::Cms::ContentFolder],
              started_at: Time,
              status:
                HubSpotSDK::Cms::BatchResponseContentFolderWithErrors::Status::OrSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # Status of batch operation.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::BatchResponseContentFolderWithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Cms::BatchResponseContentFolderWithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Cms::BatchResponseContentFolderWithErrors::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Cms::BatchResponseContentFolderWithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Cms::BatchResponseContentFolderWithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::BatchResponseContentFolderWithErrors::Status::TaggedSymbol
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
