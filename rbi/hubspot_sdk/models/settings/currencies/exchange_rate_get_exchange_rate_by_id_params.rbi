# typed: strong

module HubSpotSDK
  module Models
    module Settings
      module Currencies
        class ExchangeRateGetExchangeRateByIDParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Settings::Currencies::ExchangeRateGetExchangeRateByIDParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :exchange_rate_id

          sig do
            params(
              exchange_rate_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(exchange_rate_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                exchange_rate_id: String,
                request_options: HubSpotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
