# typed: strong

module HubSpotSDK
  module Resources
    class Settings
      class Currencies
        class CentralFxRates
          # Create a new currency with central exchange rates in the portal. Unsupported
          # currencies cannot be added here.
          sig do
            params(
              currency_code:
                HubSpotSDK::Settings::CurrencyCreateRequest::CurrencyCode::OrSymbol,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Settings::ExchangeRate)
          end
          def create_currency(
            # The currency code being added to the HubSpot portal for use with central
            # exchange rates.
            currency_code:,
            request_options: {}
          )
          end

          # Retrieve details on whether the central exchange rates feature is enabled for
          # the portal.
          sig do
            params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
              HubSpotSDK::Settings::CentralExchangeRatesInformation
            )
          end
          def get_information(request_options: {})
          end

          # Retrieve a list of currency codes that are not supported by the central exchange
          # rates. Unsupported currencies will need to be manually updated.
          sig do
            params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
              HubSpotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging
            )
          end
          def get_unsupported_currencies(request_options: {})
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
