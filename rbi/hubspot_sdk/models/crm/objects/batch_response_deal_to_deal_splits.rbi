# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class BatchResponseDealToDealSplits < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :completed_at

          sig { returns(T::Array[HubspotSDK::CRM::Objects::DealToDealSplits]) }
          attr_accessor :results

          sig { returns(Time) }
          attr_accessor :started_at

          sig do
            returns(
              HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :links

          sig { params(links: T::Hash[Symbol, String]).void }
          attr_writer :links

          sig { returns(T.nilable(Time)) }
          attr_reader :requested_at

          sig { params(requested_at: Time).void }
          attr_writer :requested_at

          sig do
            params(
              completed_at: Time,
              results:
                T::Array[HubspotSDK::CRM::Objects::DealToDealSplits::OrHash],
              started_at: Time,
              status:
                HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits::Status::OrSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            completed_at:,
            results:,
            started_at:,
            status:,
            links: nil,
            requested_at: nil
          )
          end

          sig do
            override.returns(
              {
                completed_at: Time,
                results: T::Array[HubspotSDK::CRM::Objects::DealToDealSplits],
                started_at: Time,
                status:
                  HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits::Status::TaggedSymbol,
                links: T::Hash[Symbol, String],
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
                  HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :PENDING,
                HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :CANCELED,
                HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits::Status::TaggedSymbol
              )
            COMPLETE =
              T.let(
                :COMPLETE,
                HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Objects::BatchResponseDealToDealSplits::Status::TaggedSymbol
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
