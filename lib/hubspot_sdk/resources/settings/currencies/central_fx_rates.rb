# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Settings
      class Currencies
        class CentralFxRates
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Settings::Currencies::CentralFxRateCreateCurrencyParams}
          # for more details.
          #
          # Create a new currency with central exchange rates in the portal. Unsupported
          # currencies cannot be added here.
          #
          # @overload create_currency(currency_code:, request_options: {})
          #
          # @param currency_code [Symbol, HubSpotSDK::Models::Settings::CurrencyCreateRequest::CurrencyCode] The currency code being added to the HubSpot portal for use with central exchang
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Settings::ExchangeRate]
          #
          # @see HubSpotSDK::Models::Settings::Currencies::CentralFxRateCreateCurrencyParams
          def create_currency(params)
            parsed, options =
              HubSpotSDK::Settings::Currencies::CentralFxRateCreateCurrencyParams.dump_request(params)
            @client.request(
              method: :post,
              path: "settings/currencies/2026-03/central-fx-rates/add-currency",
              body: parsed,
              model: HubSpotSDK::Settings::ExchangeRate,
              options: options
            )
          end

          # Retrieve details on whether the central exchange rates feature is enabled for
          # the portal.
          #
          # @overload get_information(request_options: {})
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Settings::CentralExchangeRatesInformation]
          #
          # @see HubSpotSDK::Models::Settings::Currencies::CentralFxRateGetInformationParams
          def get_information(params = {})
            @client.request(
              method: :get,
              path: "settings/currencies/2026-03/central-fx-rates/information",
              model: HubSpotSDK::Settings::CentralExchangeRatesInformation,
              options: params[:request_options]
            )
          end

          # Retrieve a list of currency codes that are not supported by the central exchange
          # rates. Unsupported currencies will need to be manually updated.
          #
          # @overload get_unsupported_currencies(request_options: {})
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Settings::CollectionResponseCurrencyCodeInfoNoPaging]
          #
          # @see HubSpotSDK::Models::Settings::Currencies::CentralFxRateGetUnsupportedCurrenciesParams
          def get_unsupported_currencies(params = {})
            @client.request(
              method: :get,
              path: "settings/currencies/2026-03/central-fx-rates/unsupported-currencies",
              model: HubSpotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
