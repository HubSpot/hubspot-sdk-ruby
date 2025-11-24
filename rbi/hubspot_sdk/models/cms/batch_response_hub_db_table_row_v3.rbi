# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BatchResponseHubDBTableRowV3 < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The timestamp indicating when the batch processing was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubspotSDK::Cms::HubDBTableRowV3]) }
        attr_accessor :results

        # The timestamp indicating when the batch processing began.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        sig do
          returns(
            HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A collection of related links associated with the batch response.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The timestamp indicating when the batch request was made.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results: T::Array[HubspotSDK::Cms::HubDBTableRowV3::OrHash],
            started_at: Time,
            status:
              HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp indicating when the batch processing was completed.
          completed_at:,
          results:,
          # The timestamp indicating when the batch processing began.
          started_at:,
          # The current status of the batch operation, with possible values: CANCELED,
          # COMPLETE, PENDING, PROCESSING.
          status:,
          # A collection of related links associated with the batch response.
          links: nil,
          # The timestamp indicating when the batch request was made.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubspotSDK::Cms::HubDBTableRowV3],
              started_at: Time,
              status:
                HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
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
                HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::TaggedSymbol
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
