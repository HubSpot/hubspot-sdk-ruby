# typed: strong

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        class CentralFxRates
          sig do
            params(
              currency_code:
                HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Settings::ExchangeRate)
          end
          def create_currency(currency_code:, request_options: {})
          end

          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Settings::CentralExchangeRatesInformation
            )
          end
          def get_information(request_options: {})
          end

          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging
            )
          end
          def get_unsupported_currencies(request_options: {})
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
