# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class BatchResponseExchangeRate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::BatchResponseExchangeRate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The datetime the response was completed
        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(T::Array[HubSpotSDK::Settings::ExchangeRate]) }
        attr_accessor :results

        # The datetime the of the request.
        sig { returns(Time) }
        attr_accessor :started_at

        # The current status of the response (e.g. COMPLETED)
        sig do
          returns(
            HubSpotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
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
            results: T::Array[HubSpotSDK::Settings::ExchangeRate::OrHash],
            started_at: Time,
            status:
              HubSpotSDK::Settings::BatchResponseExchangeRate::Status::OrSymbol,
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
              results: T::Array[HubSpotSDK::Settings::ExchangeRate],
              started_at: Time,
              status:
                HubSpotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            }
          )
        end
        def to_hash
        end

        # The current status of the response (e.g. COMPLETED)
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Settings::BatchResponseExchangeRate::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Settings::BatchResponseExchangeRate::Status::TaggedSymbol
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
