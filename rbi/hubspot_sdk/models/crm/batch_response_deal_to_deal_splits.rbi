# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchResponseDealToDealSplits < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchResponseDealToDealSplits,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The timestamp indicating when the batch operation was completed, in date-time
        # format.
        sig { returns(Time) }
        attr_accessor :completed_at

        # An array of deal-to-deal split objects representing the results of the batch
        # operation.
        sig { returns(T::Array[HubspotSDK::Crm::DealToDealSplits]) }
        attr_accessor :results

        # The timestamp indicating when the batch operation started, in date-time format.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        sig do
          returns(
            HubspotSDK::Crm::BatchResponseDealToDealSplits::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # A map of link names to associated URIs for additional resources or
        # documentation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

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
            results: T::Array[HubspotSDK::Crm::DealToDealSplits::OrHash],
            started_at: Time,
            status:
              HubspotSDK::Crm::BatchResponseDealToDealSplits::Status::OrSymbol,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
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
          errors: nil,
          # A map of link names to associated URIs for additional resources or
          # documentation.
          links: nil,
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
              results: T::Array[HubspotSDK::Crm::DealToDealSplits],
              started_at: Time,
              status:
                HubspotSDK::Crm::BatchResponseDealToDealSplits::Status::TaggedSymbol,
              errors: T::Array[HubspotSDK::StandardError],
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::BatchResponseDealToDealSplits::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Crm::BatchResponseDealToDealSplits::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Crm::BatchResponseDealToDealSplits::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Crm::BatchResponseDealToDealSplits::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Crm::BatchResponseDealToDealSplits::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::BatchResponseDealToDealSplits::Status::TaggedSymbol
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
