# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        class V4
          class Links
            # @overload create(channel:, subscriber_id_string:, business_unit_id: nil, language: nil, subscription_id: nil, request_options: {})
            #
            # @param channel [Symbol, HubspotSDK::Models::Marketing::Subscriptions::LinkGenerationRequest::Channel] Query param:
            #
            # @param subscriber_id_string [String] Body param:
            #
            # @param business_unit_id [Integer] Query param:
            #
            # @param language [String] Body param:
            #
            # @param subscription_id [Integer] Body param:
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::LinkGenerationResponse]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::LinkCreateParams
            def create(params)
              parsed, options = HubspotSDK::Marketing::Subscriptions::V4::LinkCreateParams.dump_request(params)
              query_params = [:channel, :business_unit_id]
              @client.request(
                method: :post,
                path: "communication-preferences/v4/links/generate",
                query: parsed.slice(*query_params).transform_keys(business_unit_id: "businessUnitId"),
                body: parsed.except(*query_params),
                model: HubspotSDK::Marketing::Subscriptions::LinkGenerationResponse,
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
