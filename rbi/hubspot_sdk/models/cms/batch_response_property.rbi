# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BatchResponseProperty < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BatchResponseProperty,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubspotSDK::Cms::Property]) }
        attr_accessor :results

        sig { returns(Time) }
        attr_accessor :started_at

        sig do
          returns(HubspotSDK::Cms::BatchResponseProperty::Status::TaggedSymbol)
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
            results: T::Array[HubspotSDK::Cms::Property::OrHash],
            started_at: Time,
            status: HubspotSDK::Cms::BatchResponseProperty::Status::OrSymbol,
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
              results: T::Array[HubspotSDK::Cms::Property],
              started_at: Time,
              status:
                HubspotSDK::Cms::BatchResponseProperty::Status::TaggedSymbol,
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
              T.all(Symbol, HubspotSDK::Cms::BatchResponseProperty::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Cms::BatchResponseProperty::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Cms::BatchResponseProperty::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Cms::BatchResponseProperty::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Cms::BatchResponseProperty::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::BatchResponseProperty::Status::TaggedSymbol
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
