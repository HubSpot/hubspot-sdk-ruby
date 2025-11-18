# typed: strong

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        class CentralFxRates
          # Create a new currency with central exchange rates in the portal. Unsupported
          # currencies cannot be added here.
          sig do
            params(
              currency_code:
                HubspotSDK::Settings::CurrencyCreateRequest::CurrencyCode::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Settings::ExchangeRate)
          end
          def create_currency(currency_code:, request_options: {})
          end

          # Retrieve details on whether the central exchange rates feature is enabled for
          # the portal.
          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Settings::CentralExchangeRatesInformation
            )
          end
          def get_information(request_options: {})
          end

          # Retrieve a list of currency codes that are not supported by the central exchange
          # rates. Unsupported currencies will need to be manually updated.
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
