# typed: strong

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        class ExchangeRates
          sig do
            returns(
              HubspotSDK::Resources::Settings::Currencies::ExchangeRates::Batch
            )
          end
          attr_reader :batch

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

          sig do
            params(
              exchange_rate_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Settings::ExchangeRate)
          end
          def get_exchange_rate_by_id(exchange_rate_id, request_options: {})
          end

          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Settings::CollectionResponseExchangeRateNoPaging
            )
          end
          def list_current_exchange_rates(request_options: {})
          end

          sig do
            params(
              after: String,
              from_currency_code:
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::FromCurrencyCode::OrSymbol,
              limit: Integer,
              to_currency_code:
                HubspotSDK::Settings::Currencies::ExchangeRateListExchangeRatesParams::ToCurrencyCode::OrSymbol,
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
            from_currency_code: nil,
            # The maximum number of results to display per page.
            limit: nil,
            to_currency_code: nil,
            request_options: {}
          )
          end

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
            # The updated conversion rate between the to and from currency code of this
            # exchange rate.
            conversion_rate:,
            # The date the exchange rate is in effect.
            effective_at: nil,
            request_options: {}
          )
          end

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
end
