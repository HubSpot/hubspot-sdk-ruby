# typed: strong

module HubspotSDK
  module Models
    module Settings
      module Currencies
        class ExchangeRateGetExchangeRateByIDParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Settings::Currencies::ExchangeRateGetExchangeRateByIDParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :exchange_rate_id

          sig do
            params(
              exchange_rate_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(exchange_rate_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                exchange_rate_id: String,
                request_options: HubspotSDK::RequestOptions
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
