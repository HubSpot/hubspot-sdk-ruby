# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class DealSplitBatchUpsertResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :completed_at

          sig do
            returns(
              T::Array[
                HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Result
              ]
            )
          end
          attr_accessor :results

          sig { returns(Time) }
          attr_accessor :started_at

          sig do
            returns(
              HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status::TaggedSymbol
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
                T::Array[
                  HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Result::OrHash
                ],
              started_at: Time,
              status:
                HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status::OrSymbol,
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
                results:
                  T::Array[
                    HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Result
                  ],
                started_at: Time,
                status:
                  HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status::TaggedSymbol,
                links: T::Hash[Symbol, String],
                requested_at: Time
              }
            )
          end
          def to_hash
          end

          class Result < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Result,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T::Array[HubspotSDK::CRM::SimplePublicObject]) }
            attr_accessor :splits

            sig do
              params(
                id: String,
                splits: T::Array[HubspotSDK::CRM::SimplePublicObject::OrHash]
              ).returns(T.attached_class)
            end
            def self.new(id:, splits:)
            end

            sig do
              override.returns(
                {
                  id: String,
                  splits: T::Array[HubspotSDK::CRM::SimplePublicObject]
                }
              )
            end
            def to_hash
            end
          end

          module Status
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :PENDING,
                HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :CANCELED,
                HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status::TaggedSymbol
              )
            COMPLETE =
              T.let(
                :COMPLETE,
                HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertResponse::Status::TaggedSymbol
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
