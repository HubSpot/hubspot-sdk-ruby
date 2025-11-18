# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        class CentralFxRates
          # Create a new currency with central exchange rates in the portal. Unsupported
          # currencies cannot be added here.
          #
          # @overload create_currency(currency_code:, request_options: {})
          #
          # @param currency_code [Symbol, HubspotSDK::Models::Settings::CurrencyCreateRequest::CurrencyCode]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Settings::ExchangeRate]
          #
          # @see HubspotSDK::Models::Settings::Currencies::CentralFxRateCreateCurrencyParams
          def create_currency(params)
            parsed, options =
              HubspotSDK::Settings::Currencies::CentralFxRateCreateCurrencyParams.dump_request(params)
            @client.request(
              method: :post,
              path: "settings/v3/currencies/central-fx-rates/add-currency",
              body: parsed,
              model: HubspotSDK::Settings::ExchangeRate,
              options: options
            )
          end

          # Retrieve details on whether the central exchange rates feature is enabled for
          # the portal.
          #
          # @overload get_information(request_options: {})
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Settings::CentralExchangeRatesInformation]
          #
          # @see HubspotSDK::Models::Settings::Currencies::CentralFxRateGetInformationParams
          def get_information(params = {})
            @client.request(
              method: :get,
              path: "settings/v3/currencies/central-fx-rates/information",
              model: HubspotSDK::Settings::CentralExchangeRatesInformation,
              options: params[:request_options]
            )
          end

          # Retrieve a list of currency codes that are not supported by the central exchange
          # rates. Unsupported currencies will need to be manually updated.
          #
          # @overload get_unsupported_currencies(request_options: {})
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Settings::CollectionResponseCurrencyCodeInfoNoPaging]
          #
          # @see HubspotSDK::Models::Settings::Currencies::CentralFxRateGetUnsupportedCurrenciesParams
          def get_unsupported_currencies(params = {})
            @client.request(
              method: :get,
              path: "settings/v3/currencies/central-fx-rates/unsupported-currencies",
              model: HubspotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
