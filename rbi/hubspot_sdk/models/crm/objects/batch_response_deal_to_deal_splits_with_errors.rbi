# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class BatchResponseDealToDealSplitsWithErrors < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :completed_at

          sig { returns(T::Array[HubspotSDK::Crm::Objects::DealToDealSplits]) }
          attr_accessor :results

          sig { returns(Time) }
          attr_accessor :started_at

          sig do
            returns(
              HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors::Status::OrSymbol
            )
          end
          attr_accessor :status

          sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
          attr_reader :errors

          sig do
            params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void
          end
          attr_writer :errors

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :links

          sig { params(links: T::Hash[Symbol, String]).void }
          attr_writer :links

          sig { returns(T.nilable(Integer)) }
          attr_reader :num_errors

          sig { params(num_errors: Integer).void }
          attr_writer :num_errors

          sig { returns(T.nilable(Time)) }
          attr_reader :requested_at

          sig { params(requested_at: Time).void }
          attr_writer :requested_at

          sig do
            params(
              completed_at: Time,
              results:
                T::Array[HubspotSDK::Crm::Objects::DealToDealSplits::OrHash],
              started_at: Time,
              status:
                HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors::Status::OrSymbol,
              errors: T::Array[HubspotSDK::StandardError::OrHash],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            completed_at:,
            results:,
            started_at:,
            status:,
            errors: nil,
            links: nil,
            num_errors: nil,
            requested_at: nil
          )
          end

          sig do
            override.returns(
              {
                completed_at: Time,
                results: T::Array[HubspotSDK::Crm::Objects::DealToDealSplits],
                started_at: Time,
                status:
                  HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors::Status::OrSymbol,
                errors: T::Array[HubspotSDK::StandardError],
                links: T::Hash[Symbol, String],
                num_errors: Integer,
                requested_at: Time
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
                  HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CANCELED =
              T.let(
                :CANCELED,
                HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
              )
            COMPLETE =
              T.let(
                :COMPLETE,
                HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :PENDING,
                HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Objects::BatchResponseDealToDealSplitsWithErrors::Status::TaggedSymbol
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
end
