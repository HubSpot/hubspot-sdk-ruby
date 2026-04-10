# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class BatchResponseLabelsBetweenObjectPair < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The timestamp when the batch processing was completed, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubSpotSDK::Crm::LabelsBetweenObjectPair]) }
        attr_accessor :results

        # The timestamp when the batch processing began, in ISO 8601 format.
        sig { returns(Time) }
        attr_accessor :started_at

        # The status of the batch processing request: "PENDING", "PROCESSING",
        # "CANCELLED", or "COMPLETE".
        sig do
          returns(
            HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair::Status::OrSymbol
          )
        end
        attr_accessor :status

        # An object containing relevant links related to the batch request.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The timestamp when the batch request was initially made, in ISO 8601 format.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results: T::Array[HubSpotSDK::Crm::LabelsBetweenObjectPair::OrHash],
            started_at: Time,
            status:
              HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp when the batch processing was completed, in ISO 8601 format.
          completed_at:,
          results:,
          # The timestamp when the batch processing began, in ISO 8601 format.
          started_at:,
          # The status of the batch processing request: "PENDING", "PROCESSING",
          # "CANCELLED", or "COMPLETE".
          status:,
          # An object containing relevant links related to the batch request.
          links: nil,
          # The timestamp when the batch request was initially made, in ISO 8601 format.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubSpotSDK::Crm::LabelsBetweenObjectPair],
              started_at: Time,
              status:
                HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair::Status::OrSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the batch processing request: "PENDING", "PROCESSING",
        # "CANCELLED", or "COMPLETE".
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::BatchResponseLabelsBetweenObjectPair::Status::TaggedSymbol
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
