# typed: strong

module HubspotSDK
  module Models
    module Settings
      class BatchResponseExchangeRate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::BatchResponseExchangeRate,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The datetime the response was completed
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubspotSDK::Settings::ExchangeRate]) }
        attr_accessor :results

        # The datetime the of the request.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the response (e.g. COMPLETED)
        sig do
          returns(
            HubspotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The link to the next page with exchange rates.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The datetime the of the request.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig do
          params(
            completed_at: Time,
            results: T::Array[HubspotSDK::Settings::ExchangeRate::OrHash],
            started_at: Time,
            status:
              HubspotSDK::Settings::BatchResponseExchangeRate::Status::OrSymbol,
            links: T::Hash[Symbol, String],
            requested_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The datetime the response was completed
          completed_at:,
          results:,
          # The datetime the of the request.
          started_at:,
          # The current status of the response (e.g. COMPLETED)
          status:,
          # The link to the next page with exchange rates.
          links: nil,
          # The datetime the of the request.
          requested_at: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              results: T::Array[HubspotSDK::Settings::ExchangeRate],
              started_at: Time,
              status:
                HubspotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the response (e.g. COMPLETED)
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Settings::BatchResponseExchangeRate::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
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
