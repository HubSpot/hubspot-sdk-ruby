# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        # @return [HubspotSDK::Resources::Settings::Currencies::CentralFxRates]
        attr_reader :central_fx_rates

        # @return [HubspotSDK::Resources::Settings::Currencies::ExchangeRates]
        attr_reader :exchange_rates

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
            path: "settings/currencies/2026-03/company-currency",
            model: HubspotSDK::Settings::CompanyCurrency,
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
            path: "settings/currencies/2026-03/codes",
            model: HubspotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging,
            options: params[:request_options]
          )
        end

        # Set or update the primary company currency.
        #
        # @overload update_company_currency(currency_code:, request_options: {})
        #
        # @param currency_code [Symbol, HubspotSDK::Models::Settings::CompanyCurrencyUpdateRequest::CurrencyCode] The three-letter code representing a specific currency (ex. USD).
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Settings::CompanyCurrency]
        #
        # @see HubspotSDK::Models::Settings::CurrencyUpdateCompanyCurrencyParams
        def update_company_currency(params)
          parsed, options = HubspotSDK::Settings::CurrencyUpdateCompanyCurrencyParams.dump_request(params)
          @client.request(
            method: :put,
            path: "settings/currencies/2026-03/company-currency",
            body: parsed,
            model: HubspotSDK::Settings::CompanyCurrency,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @central_fx_rates = HubspotSDK::Resources::Settings::Currencies::CentralFxRates.new(client: client)
          @exchange_rates = HubspotSDK::Resources::Settings::Currencies::ExchangeRates.new(client: client)
        end
      end
    end
  end
end
