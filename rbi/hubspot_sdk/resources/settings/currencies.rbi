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
          conversion_rate:,
          from_currency_code:,
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
        def get_exchange_rate_by_id(exchange_rate_id, request_options: {})
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
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Settings::CollectionResponseExchangeRateForwardPaging
          )
        end
        def list_exchange_rates(request_options: {})
        end

        # Set or update the primary company currency.
        sig do
          params(
            currency_code:
              HubspotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Settings::CompanyCurrency)
        end
        def update_company_currency(currency_code:, request_options: {})
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
          exchange_rate_id,
          conversion_rate:,
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
          from_currency_code:,
          to_currency_code:,
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
