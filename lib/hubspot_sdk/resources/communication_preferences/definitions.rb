# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class CommunicationPreferences
      class Definitions
        # Get a list of subscription status definitions from the account.
        #
        # @overload list(business_unit_id: nil, include_translations: nil, request_options: {})
        #
        # @param business_unit_id [Integer]
        # @param include_translations [Boolean]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition]
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::DefinitionListParams
        def list(params = {})
          parsed, options = HubSpotSDK::CommunicationPreferences::DefinitionListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "communication-preferences/2026-03/definitions",
            query: query.transform_keys(
              business_unit_id: "businessUnitId",
              include_translations: "includeTranslations"
            ),
            model: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
