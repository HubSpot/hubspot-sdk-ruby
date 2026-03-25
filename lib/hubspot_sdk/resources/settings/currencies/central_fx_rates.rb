# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        class CentralFxRates
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Settings::Currencies::CentralFxRateCreateCurrencyParams}
          # for more details.
          #
          # @overload create_currency(currency_code:, request_options: {})
          #
          # @param currency_code [Symbol, HubspotSDK::Models::Settings::CurrencyCreateRequest::CurrencyCode] The currency code being added to the HubSpot portal for use with central exchang
          #
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
              path: "settings/currencies/2026-03/central-fx-rates/add-currency",
              body: parsed,
              model: HubspotSDK::Settings::ExchangeRate,
              options: options
            )
          end

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
              path: "settings/currencies/2026-03/central-fx-rates/information",
              model: HubspotSDK::Settings::CentralExchangeRatesInformation,
              options: params[:request_options]
            )
          end

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
              path: "settings/currencies/2026-03/central-fx-rates/unsupported-currencies",
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
