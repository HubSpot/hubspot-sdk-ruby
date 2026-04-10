# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class BatchResponseDealToDealSplitsWithErrors < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The timestamp indicating when the batch operation was completed, in date-time
        # format.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array of deal-to-deal split objects representing the results of the batch
        # operation.
        sig { returns(T::Array[HubSpotSDK::Crm::DealToDealSplits]) }
        attr_accessor :results

        # The timestamp indicating when the batch operation started, in date-time format.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        sig do
          returns(
            HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        # An array of error objects detailing the errors that occurred during the batch
        # operation.
        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # A map of link names to associated URIs for additional resources or
        # documentation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The total number of errors encountered during the batch operation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # The timestamp indicating when the batch operation was requested, in date-time
        # format.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results: T::Array[HubSpotSDK::Crm::DealToDealSplits::OrHash],
            started_at: Time,
            status:
              HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp indicating when the batch operation was completed, in date-time
          # format.
          completed_at:,
          # An array of deal-to-deal split objects representing the results of the batch
          # operation.
          results:,
          # The timestamp indicating when the batch operation started, in date-time format.
          started_at:,
          # The current status of the batch operation, with possible values: CANCELED,
          # COMPLETE, PENDING, PROCESSING.
          status:,
          # An array of error objects detailing the errors that occurred during the batch
          # operation.
          errors: nil,
          # A map of link names to associated URIs for additional resources or
          # documentation.
          links: nil,
          # The total number of errors encountered during the batch operation.
          num_errors: nil,
          # The timestamp indicating when the batch operation was requested, in date-time
          # format.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubSpotSDK::Crm::DealToDealSplits],
              started_at: Time,
              status:
                HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors::Status::OrSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
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
