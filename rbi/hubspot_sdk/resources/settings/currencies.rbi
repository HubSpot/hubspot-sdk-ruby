# typed: strong

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        sig do
          returns(HubspotSDK::Resources::Settings::Currencies::CentralFxRates)
        end
        attr_reader :central_fx_rates

        # Create multiple exchange rates in a single request.
        sig do
          params(
            inputs:
              T::Array[HubspotSDK::Settings::ExchangeRateCreateRequest::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::BatchResponseExchangeRate)
        end
        def batch_create(inputs:, request_options: {})
        end

        # Retrieve the details of multiple exchange rates in a single request, specified
        # by their IDs.
        sig do
          params(
            inputs: T::Array[HubspotSDK::PublicObjectID::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::BatchResponseExchangeRate)
        end
        def batch_get(inputs:, request_options: {})
        end

        # Update the conversion rates for multiple exchange rates in a batch operation.
        sig do
          params(
            inputs:
              T::Array[HubspotSDK::Settings::ExchangeRateUpdateRequest::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::BatchResponseExchangeRate)
        end
        def batch_update(inputs:, request_options: {})
        end

        # Create a new exchange rate with specified conversion rate and currency codes.
        sig do
          params(
            conversion_rate: Float,
            from_currency_code:
              HubspotSDK::Settings::ExchangeRateCreateRequest::FromCurrencyCode::OrSymbol,
            effective_at: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::ExchangeRate)
        end
        def create_exchange_rate(
          # The conversion rate between the to and from currency code of this exchange rate.
          conversion_rate:,
          # This represents the three-letter currency code (such as USD for US Dollar) of
          # the currency you want to convert from.
          from_currency_code:,
          # The date the exchange rate is in effect.
          effective_at: nil,
          request_options: {}
        )
        end

        # Get the details for the company currency. The company currency is used in deal
        # totals, reports, and the default currency for new deals.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Settings::CompanyCurrency
          )
        end
        def get_company_currency(request_options: {})
        end

        # Retrieve the details for a specific exchange rate specified by its ID.
        sig do
          params(
            exchange_rate_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::ExchangeRate)
        end
        def get_exchange_rate_by_id(
          # The ID of the exchange rate to retrieve.
          exchange_rate_id,
          request_options: {}
        )
        end

        # Retrieve a list of all available currency codes and their names.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging
          )
        end
        def list_codes(request_options: {})
        end

        # Retrieve all current exchange rates for all currency pairs.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Settings::CollectionResponseExchangeRateNoPaging
          )
        end
        def list_current_exchange_rates(request_options: {})
        end

        # Get a list of exchange rates
        sig do
          params(
            after: String,
            from_currency_code:
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::FromCurrencyCode::OrSymbol,
            limit: Integer,
            to_currency_code:
              HubspotSDK::Settings::CurrencyListExchangeRatesParams::ToCurrencyCode::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Settings::ExchangeRate]
          )
        end
        def list_exchange_rates(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Filters the response to only include exchange rates set from the specified
          # currency.
          from_currency_code: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # Filters the response to only include exchange rates set to the specified
          # currency.
          to_currency_code: nil,
          request_options: {}
        )
        end

        # Set or update the primary company currency.
        sig do
          params(
            currency_code:
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::CompanyCurrency)
        end
        def update_company_currency(
          # The three-letter code representing a specific currency (ex. USD).
          currency_code:,
          request_options: {}
        )
        end

        # Update an existing conversion rate, specified by its ID.
        sig do
          params(
            exchange_rate_id: String,
            conversion_rate: Float,
            effective_at: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::ExchangeRate)
        end
        def update_exchange_rate(
          # The unique identifier of the exchange rate to be updated.
          exchange_rate_id,
          # The updated conversion rate between the to and from currency code of this
          # exchange rate.
          conversion_rate:,
          # The date the exchange rate is in effect.
          effective_at: nil,
          request_options: {}
        )
        end

        # Change the visibility setting for a currency pair. This will hide or display a
        # currency pair for users in the HubSpot app.
        sig do
          params(
            from_currency_code:
              HubspotSDK::Settings::CurrencyPairUpdate::FromCurrencyCode::OrSymbol,
            to_currency_code:
              HubspotSDK::Settings::CurrencyPairUpdate::ToCurrencyCode::OrSymbol,
            visible_in_ui: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def update_visibility(
          # This represents the three-letter currency code (such as USD for US Dollar) of
          # the currency you want to convert from.
          from_currency_code:,
          # This represents the three-letter currency code (such as USD for US Dollar) of
          # the currency you want to convert to.
          to_currency_code:,
          # This indicates if the currency pair is shown in the MultiCurrency settings page.
          # Setting this to false will remove the currency pair from the settings page.
          visible_in_ui:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
