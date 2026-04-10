# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class BatchResponseExchangeRateWithErrors < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors,
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
            HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors::Status::OrSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(T::Array[HubSpotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubSpotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # The link to the next page with exchange rates.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # The number of errors associated to the request.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

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
              HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors::Status::OrSymbol,
            errors: T::Array[HubSpotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
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
          errors: nil,
          # The link to the next page with exchange rates.
          links: nil,
          # The number of errors associated to the request.
          num_errors: nil,
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
                HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors::Status::OrSymbol,
              errors: T::Array[HubSpotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
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
                HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Settings::BatchResponseExchangeRateWithErrors::Status::TaggedSymbol
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
