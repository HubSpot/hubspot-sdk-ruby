# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Settings
      class Currencies
        class ExchangeRates
          # @return [HubSpotSDK::Resources::Settings::Currencies::ExchangeRates::Batch]
          attr_reader :batch

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Settings::Currencies::ExchangeRateCreateExchangeRateParams}
          # for more details.
          #
          # Create a new exchange rate with specified conversion rate and currency codes.
          #
          # @overload create_exchange_rate(conversion_rate:, from_currency_code:, effective_at: nil, request_options: {})
          #
          # @param conversion_rate [Float] The conversion rate between the to and from currency code of this exchange rate.
          #
          # @param from_currency_code [Symbol, HubSpotSDK::Models::Settings::ExchangeRateCreateRequest::FromCurrencyCode] This represents the three-letter currency code (such as USD for US Dollar) of th
          #
          # @param effective_at [Time] The date the exchange rate is in effect.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Settings::ExchangeRate]
          #
          # @see HubSpotSDK::Models::Settings::Currencies::ExchangeRateCreateExchangeRateParams
          def create_exchange_rate(params)
            parsed, options =
              HubSpotSDK::Settings::Currencies::ExchangeRateCreateExchangeRateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "settings/currencies/2026-03/exchange-rates",
              body: parsed,
              model: HubSpotSDK::Settings::ExchangeRate,
              options: options
            )
          end

          # Retrieve the details for a specific exchange rate specified by its ID.
          #
          # @overload get_exchange_rate_by_id(exchange_rate_id, request_options: {})
          #
          # @param exchange_rate_id [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Settings::ExchangeRate]
          #
          # @see HubSpotSDK::Models::Settings::Currencies::ExchangeRateGetExchangeRateByIDParams
          def get_exchange_rate_by_id(exchange_rate_id, params = {})
            @client.request(
              method: :get,
              path: ["settings/currencies/2026-03/exchange-rates/%1$s", exchange_rate_id],
              model: HubSpotSDK::Settings::ExchangeRate,
              options: params[:request_options]
            )
          end

          # Retrieve all current exchange rates for all currency pairs.
          #
          # @overload list_current_exchange_rates(request_options: {})
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Settings::CollectionResponseExchangeRateNoPaging]
          #
          # @see HubSpotSDK::Models::Settings::Currencies::ExchangeRateListCurrentExchangeRatesParams
          def list_current_exchange_rates(params = {})
            @client.request(
              method: :get,
              path: "settings/currencies/2026-03/exchange-rates/current",
              model: HubSpotSDK::Settings::CollectionResponseExchangeRateNoPaging,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Settings::Currencies::ExchangeRateListExchangeRatesParams}
          # for more details.
          #
          # Get a list of exchange rates
          #
          # @overload list_exchange_rates(after: nil, from_currency_code: nil, limit: nil, to_currency_code: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param from_currency_code [Symbol, HubSpotSDK::Models::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param to_currency_code [Symbol, HubSpotSDK::Models::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Settings::ExchangeRate>]
          #
          # @see HubSpotSDK::Models::Settings::Currencies::ExchangeRateListExchangeRatesParams
          def list_exchange_rates(params = {})
            parsed, options =
              HubSpotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "settings/currencies/2026-03/exchange-rates",
              query: query.transform_keys(
                from_currency_code: "fromCurrencyCode",
                to_currency_code: "toCurrencyCode"
              ),
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Settings::ExchangeRate,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Settings::Currencies::ExchangeRateUpdateExchangeRateParams}
          # for more details.
          #
          # Update an existing conversion rate, specified by its ID.
          #
          # @overload update_exchange_rate(exchange_rate_id, conversion_rate:, effective_at: nil, request_options: {})
          #
          # @param exchange_rate_id [String]
          #
          # @param conversion_rate [Float] The updated conversion rate between the to and from currency code of this exchan
          #
          # @param effective_at [Time] The date the exchange rate is in effect.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Settings::ExchangeRate]
          #
          # @see HubSpotSDK::Models::Settings::Currencies::ExchangeRateUpdateExchangeRateParams
          def update_exchange_rate(exchange_rate_id, params)
            parsed, options =
              HubSpotSDK::Settings::Currencies::ExchangeRateUpdateExchangeRateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["settings/currencies/2026-03/exchange-rates/%1$s", exchange_rate_id],
              body: parsed,
              model: HubSpotSDK::Settings::ExchangeRate,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Settings::Currencies::ExchangeRateUpdateVisibilityParams}
          # for more details.
          #
          # Change the visibility setting for a currency pair. This will hide or display a
          # currency pair for users in the HubSpot app.
          #
          # @overload update_visibility(from_currency_code:, to_currency_code:, visible_in_ui:, request_options: {})
          #
          # @param from_currency_code [Symbol, HubSpotSDK::Models::Settings::CurrencyPairUpdate::FromCurrencyCode] This represents the three-letter currency code (such as USD for US Dollar) of th
          #
          # @param to_currency_code [Symbol, HubSpotSDK::Models::Settings::CurrencyPairUpdate::ToCurrencyCode] This represents the three-letter currency code (such as USD for US Dollar) of th
          #
          # @param visible_in_ui [Boolean] This indicates if the currency pair is shown in the MultiCurrency settings page.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Settings::Currencies::ExchangeRateUpdateVisibilityParams
          def update_visibility(params)
            parsed, options =
              HubSpotSDK::Settings::Currencies::ExchangeRateUpdateVisibilityParams.dump_request(params)
            @client.request(
              method: :post,
              path: "settings/currencies/2026-03/exchange-rates/update-visibility",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubSpotSDK::Resources::Settings::Currencies::ExchangeRates::Batch.new(client: client)
          end
        end
      end
    end
  end
end
