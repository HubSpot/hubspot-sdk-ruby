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

        sig { returns(T.nilable(Time)) }
        attr_reader :completed_at

        sig { params(completed_at: Time).void }
        attr_writer :completed_at

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig { returns(T.nilable(T::Array[HubspotSDK::Cms::HubDBTableRowV3])) }
        attr_reader :results

        sig do
          params(
            results: T::Array[HubspotSDK::Cms::HubDBTableRowV3::OrHash]
          ).void
        end
        attr_writer :results

        sig { returns(T.nilable(Time)) }
        attr_reader :started_at

        sig { params(started_at: Time).void }
        attr_writer :started_at

        sig do
          returns(
            T.nilable(
              HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            completed_at: Time,
            links: T::Hash[Symbol, String],
            requested_at: Time,
            results: T::Array[HubspotSDK::Cms::HubDBTableRowV3::OrHash],
            started_at: Time,
            status:
              HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          completed_at: nil,
          links: nil,
          requested_at: nil,
          results: nil,
          started_at: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              links: T::Hash[Symbol, String],
              requested_at: Time,
              results: T::Array[HubspotSDK::Cms::HubDBTableRowV3],
              started_at: Time,
              status:
                HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status::TaggedSymbol
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
                HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

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
