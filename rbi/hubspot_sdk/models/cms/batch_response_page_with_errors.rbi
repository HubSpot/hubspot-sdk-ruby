# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BatchResponsePageWithErrors < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BatchResponsePageWithErrors,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Time of batch operation completion.
        sig { returns(Time) }
        attr_accessor :completed_at

        # Results of batch operation.
        sig { returns(T::Array[HubspotSDK::Cms::Page]) }
        attr_accessor :results

        # Time of batch operation start.
        sig { returns(Time) }
        attr_accessor :started_at

        # Status of batch operation.
        sig do
          returns(
            HubspotSDK::Cms::BatchResponsePageWithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        # Errors in batch operation.
        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
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

        # Response object for batch operations on pages with errors.
        sig do
          params(
            completed_at: Time,
            results: T::Array[HubspotSDK::Cms::Page::OrHash],
            started_at: Time,
            status:
              HubspotSDK::Cms::BatchResponsePageWithErrors::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
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
              results: T::Array[HubspotSDK::Cms::Page],
              started_at: Time,
              status:
                HubspotSDK::Cms::BatchResponsePageWithErrors::Status::OrSymbol,
              errors: T::Array[HubspotSDK::StandardError],
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Cms::BatchResponsePageWithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Cms::BatchResponsePageWithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Cms::BatchResponsePageWithErrors::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Cms::BatchResponsePageWithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Cms::BatchResponsePageWithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::BatchResponsePageWithErrors::Status::TaggedSymbol
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
