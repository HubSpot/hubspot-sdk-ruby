# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      class Currencies
        class ExchangeRates
          class Batch
            # Create multiple exchange rates in a single request.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Settings::ExchangeRateCreateRequest>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Settings::BatchResponseExchangeRate]
            #
            # @see HubspotSDK::Models::Settings::Currencies::ExchangeRates::BatchCreateParams
            def create(params)
              parsed, options = HubspotSDK::Settings::Currencies::ExchangeRates::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "settings/currencies/2026-03/exchange-rates/batch/create",
                body: parsed,
                model: HubspotSDK::Settings::BatchResponseExchangeRate,
                options: options
              )
            end

            # Update the conversion rates for multiple exchange rates in a batch operation.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Settings::ExchangeRateUpdateRequest>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Settings::BatchResponseExchangeRate]
            #
            # @see HubspotSDK::Models::Settings::Currencies::ExchangeRates::BatchUpdateParams
            def update(params)
              parsed, options = HubspotSDK::Settings::Currencies::ExchangeRates::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "settings/currencies/2026-03/exchange-rates/batch/update",
                body: parsed,
                model: HubspotSDK::Settings::BatchResponseExchangeRate,
                options: options
              )
            end

            # Retrieve the details of multiple exchange rates in a single request, specified
            # by their IDs.
            #
            # @overload get(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::PublicObjectID>] An array of deal split inputs
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Settings::BatchResponseExchangeRate]
            #
            # @see HubspotSDK::Models::Settings::Currencies::ExchangeRates::BatchGetParams
            def get(params)
              parsed, options = HubspotSDK::Settings::Currencies::ExchangeRates::BatchGetParams.dump_request(params)
              @client.request(
                method: :post,
                path: "settings/currencies/2026-03/exchange-rates/batch/read",
                body: parsed,
                model: HubspotSDK::Settings::BatchResponseExchangeRate,
                options: options
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
end
