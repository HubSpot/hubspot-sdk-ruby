# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        class V4
          class Definitions
            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Marketing::Subscriptions::V4::DefinitionListParams} for
            # more details.
            #
            # Get a list of subscription status definitions from the account.
            #
            # @overload list(business_unit_id: nil, include_translations: nil, request_options: {})
            #
            # @param business_unit_id [Integer] If you have the [business unit add-on](https://developers.hubspot.com/beta-docs/
            #
            # @param include_translations [Boolean] Set to `true` to return subscription translations associated with each definitio
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::DefinitionListParams
            def list(params = {})
              parsed, options = HubspotSDK::Marketing::Subscriptions::V4::DefinitionListParams.dump_request(params)
              @client.request(
                method: :get,
                path: "communication-preferences/v4/definitions",
                query: parsed.transform_keys(
                  business_unit_id: "businessUnitId",
                  include_translations: "includeTranslations"
                ),
                model: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition,
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
