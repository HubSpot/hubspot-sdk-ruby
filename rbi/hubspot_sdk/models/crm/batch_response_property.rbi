# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class BatchResponseProperty < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::BatchResponseProperty,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The timestamp indicating when the batch operation was completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubSpotSDK::Property]) }
        attr_accessor :results

        # The timestamp indicating when the batch operation began processing.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the batch operation, with possible values being CANCELED,
        # COMPLETE, PENDING, or PROCESSING.
        sig do
          returns(HubSpotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol)
        end
        attr_accessor :status

        # A collection of URLs linking to documentation or resources related to the batch
        # operation.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The timestamp indicating when the batch operation was requested.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results: T::Array[HubSpotSDK::Property::OrHash],
            started_at: Time,
            status: HubSpotSDK::Crm::BatchResponseProperty::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The timestamp indicating when the batch operation was completed.
          completed_at:,
          results:,
          # The timestamp indicating when the batch operation began processing.
          started_at:,
          # The current status of the batch operation, with possible values being CANCELED,
          # COMPLETE, PENDING, or PROCESSING.
          status:,
          # A collection of URLs linking to documentation or resources related to the batch
          # operation.
          links: nil,
          # The timestamp indicating when the batch operation was requested.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubSpotSDK::Property],
              started_at: Time,
              status:
                HubSpotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the batch operation, with possible values being CANCELED,
        # COMPLETE, PENDING, or PROCESSING.
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::BatchResponseProperty::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::BatchResponseProperty::Status::TaggedSymbol
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
