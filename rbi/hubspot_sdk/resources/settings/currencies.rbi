# typed: strong

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        sig do
          returns(HubspotSDK::Resources::Settings::Currencies::CentralFxRates)
        end
        attr_reader :central_fx_rates

        sig do
          returns(HubspotSDK::Resources::Settings::Currencies::ExchangeRates)
        end
        attr_reader :exchange_rates

        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Settings::CompanyCurrency
          )
        end
        def get_company_currency(request_options: {})
        end

        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging
          )
        end
        def list_codes(request_options: {})
        end

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

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
