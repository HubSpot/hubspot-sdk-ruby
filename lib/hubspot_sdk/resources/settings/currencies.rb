# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        # @return [HubspotSDK::Resources::Settings::Currencies::CentralFxRates]
        attr_reader :central_fx_rates

        # Create multiple exchange rates in a single request.
        #
        # @overload batch_create(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Settings::ExchangeRateCreateRequest>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::BatchResponseExchangeRate]
        #
        # @see HubspotSDK::Models::Settings::CurrencyBatchCreateParams
        def batch_create(params)
          parsed, options = HubspotSDK::Settings::CurrencyBatchCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "settings/v3/currencies/exchange-rates/batch/create",
            body: parsed,
            model: HubspotSDK::Settings::BatchResponseExchangeRate,
            options: options
          )
        end

        # Retrieve the details of multiple exchange rates in a single request, specified
        # by their IDs.
        #
        # @overload batch_get(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::PublicObjectID>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::BatchResponseExchangeRate]
        #
        # @see HubspotSDK::Models::Settings::CurrencyBatchGetParams
        def batch_get(params)
          parsed, options = HubspotSDK::Settings::CurrencyBatchGetParams.dump_request(params)
          @client.request(
            method: :post,
            path: "settings/v3/currencies/exchange-rates/batch/read",
            body: parsed,
            model: HubspotSDK::Settings::BatchResponseExchangeRate,
            options: options
          )
        end

        # Update the conversion rates for multiple exchange rates in a batch operation.
        #
        # @overload batch_update(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Settings::ExchangeRateUpdateRequest>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::BatchResponseExchangeRate]
        #
        # @see HubspotSDK::Models::Settings::CurrencyBatchUpdateParams
        def batch_update(params)
          parsed, options = HubspotSDK::Settings::CurrencyBatchUpdateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "settings/v3/currencies/exchange-rates/batch/update",
            body: parsed,
            model: HubspotSDK::Settings::BatchResponseExchangeRate,
            options: options
          )
        end

        # Create a new exchange rate with specified conversion rate and currency codes.
        #
        # @overload create_exchange_rate(conversion_rate:, from_currency_code:, effective_at: nil, request_options: {})
        #
        # @param conversion_rate [Float]
        # @param from_currency_code [Symbol, HubspotSDK::Models::Settings::ExchangeRateCreateRequest::FromCurrencyCode]
        # @param effective_at [Time]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::ExchangeRate]
        #
        # @see HubspotSDK::Models::Settings::CurrencyCreateExchangeRateParams
        def create_exchange_rate(params)
          parsed, options = HubspotSDK::Settings::CurrencyCreateExchangeRateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "settings/v3/currencies/exchange-rates",
            body: parsed,
            model: HubspotSDK::Settings::ExchangeRate,
            options: options
          )
        end

        # Get the details for the company currency. The company currency is used in deal
        # totals, reports, and the default currency for new deals.
        #
        # @overload get_company_currency(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::CompanyCurrency]
        #
        # @see HubspotSDK::Models::Settings::CurrencyGetCompanyCurrencyParams
        def get_company_currency(params = {})
          @client.request(
            method: :get,
            path: "settings/v3/currencies/company-currency",
            model: HubspotSDK::Settings::CompanyCurrency,
            options: params[:request_options]
          )
        end

        # Retrieve the details for a specific exchange rate specified by its ID.
        #
        # @overload get_exchange_rate_by_id(exchange_rate_id, request_options: {})
        #
        # @param exchange_rate_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::ExchangeRate]
        #
        # @see HubspotSDK::Models::Settings::CurrencyGetExchangeRateByIDParams
        def get_exchange_rate_by_id(exchange_rate_id, params = {})
          @client.request(
            method: :get,
            path: ["settings/v3/currencies/exchange-rates/%1$s", exchange_rate_id],
            model: HubspotSDK::Settings::ExchangeRate,
            options: params[:request_options]
          )
        end

        # Retrieve a list of all available currency codes and their names.
        #
        # @overload list_codes(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::CollectionResponseCurrencyCodeInfoNoPaging]
        #
        # @see HubspotSDK::Models::Settings::CurrencyListCodesParams
        def list_codes(params = {})
          @client.request(
            method: :get,
            path: "settings/v3/currencies/codes",
            model: HubspotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging,
            options: params[:request_options]
          )
        end

        # Retrieve all current exchange rates for all currency pairs.
        #
        # @overload list_current_exchange_rates(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::CollectionResponseExchangeRateNoPaging]
        #
        # @see HubspotSDK::Models::Settings::CurrencyListCurrentExchangeRatesParams
        def list_current_exchange_rates(params = {})
          @client.request(
            method: :get,
            path: "settings/v3/currencies/exchange-rates/current",
            model: HubspotSDK::Settings::CollectionResponseExchangeRateNoPaging,
            options: params[:request_options]
          )
        end

        # Get a list of exchange rates
        #
        # @overload list_exchange_rates(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::CollectionResponseExchangeRateForwardPaging]
        #
        # @see HubspotSDK::Models::Settings::CurrencyListExchangeRatesParams
        def list_exchange_rates(params = {})
          @client.request(
            method: :get,
            path: "settings/v3/currencies/exchange-rates",
            model: HubspotSDK::Settings::CollectionResponseExchangeRateForwardPaging,
            options: params[:request_options]
          )
        end

        # Set or update the primary company currency.
        #
        # @overload update_company_currency(currency_code:, request_options: {})
        #
        # @param currency_code [Symbol, HubspotSDK::Models::Settings::CompanyCurrencyUpdateRequest::CurrencyCode]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::CompanyCurrency]
        #
        # @see HubspotSDK::Models::Settings::CurrencyUpdateCompanyCurrencyParams
        def update_company_currency(params)
          parsed, options = HubspotSDK::Settings::CurrencyUpdateCompanyCurrencyParams.dump_request(params)
          @client.request(
            method: :put,
            path: "settings/v3/currencies/company-currency",
            body: parsed,
            model: HubspotSDK::Settings::CompanyCurrency,
            options: options
          )
        end

        # Update an existing conversion rate, specified by its ID.
        #
        # @overload update_exchange_rate(exchange_rate_id, conversion_rate:, effective_at: nil, request_options: {})
        #
        # @param exchange_rate_id [String]
        # @param conversion_rate [Float]
        # @param effective_at [Time]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::ExchangeRate]
        #
        # @see HubspotSDK::Models::Settings::CurrencyUpdateExchangeRateParams
        def update_exchange_rate(exchange_rate_id, params)
          parsed, options = HubspotSDK::Settings::CurrencyUpdateExchangeRateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["settings/v3/currencies/exchange-rates/%1$s", exchange_rate_id],
            body: parsed,
            model: HubspotSDK::Settings::ExchangeRate,
            options: options
          )
        end

        # Change the visibility setting for a currency pair. This will hide or display a
        # currency pair for users in the HubSpot app.
        #
        # @overload update_visibility(from_currency_code:, to_currency_code:, visible_in_ui:, request_options: {})
        #
        # @param from_currency_code [Symbol, HubspotSDK::Models::Settings::CurrencyPairUpdate::FromCurrencyCode]
        # @param to_currency_code [Symbol, HubspotSDK::Models::Settings::CurrencyPairUpdate::ToCurrencyCode]
        # @param visible_in_ui [Boolean]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Settings::CurrencyUpdateVisibilityParams
        def update_visibility(params)
          parsed, options = HubspotSDK::Settings::CurrencyUpdateVisibilityParams.dump_request(params)
          @client.request(
            method: :post,
            path: "settings/v3/currencies/exchange-rates/update-visibility",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @central_fx_rates = HubspotSDK::Resources::Settings::Currencies::CentralFxRates.new(client: client)
        end
      end
    end
  end
end
