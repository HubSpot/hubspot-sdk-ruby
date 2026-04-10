# typed: strong

module HubSpotSDK
  module Resources
    class Settings
      class Currencies
        sig do
          returns(HubSpotSDK::Resources::Settings::Currencies::CentralFxRates)
        end
        attr_reader :central_fx_rates

        sig do
          returns(HubSpotSDK::Resources::Settings::Currencies::ExchangeRates)
        end
        attr_reader :exchange_rates

        # Get the details for the company currency. The company currency is used in deal
        # totals, reports, and the default currency for new deals.
        sig do
          params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
            HubSpotSDK::Settings::CompanyCurrency
          )
        end
        def get_company_currency(request_options: {})
        end

        # Retrieve a list of all available currency codes and their names.
        sig do
          params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
            HubSpotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging
          )
        end
        def list_codes(request_options: {})
        end

        # Set or update the primary company currency.
        sig do
          params(
            currency_code:
              HubSpotSDK::Settings::CompanyCurrencyUpdateRequest::CurrencyCode::OrSymbol,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Settings::CompanyCurrency)
        end
        def update_company_currency(
          # The three-letter code representing a specific currency (ex. USD).
          currency_code:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
