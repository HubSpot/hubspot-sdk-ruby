# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CommunicationPreferences
      class Definitions
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::CommunicationPreferences::DefinitionListParams} for more
        # details.
        #
        # Get a list of subscription status definitions from the account.
        #
        # @overload list(business_unit_id: nil, include_translations: nil, request_options: {})
        #
        # @param business_unit_id [Integer] The unique identifier of the business unit for which to retrieve the subscriptio
        #
        # @param include_translations [Boolean] A boolean indicating whether to include translations of the subscription definit
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition]
        #
        # @see HubspotSDK::Models::CommunicationPreferences::DefinitionListParams
        def list(params = {})
          parsed, options = HubspotSDK::CommunicationPreferences::DefinitionListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "communication-preferences/2026-03/definitions",
            query: query.transform_keys(
              business_unit_id: "businessUnitId",
              include_translations: "includeTranslations"
            ),
            model: HubspotSDK::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition,
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
