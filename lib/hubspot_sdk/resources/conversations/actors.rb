# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Actors
        # @overload batch_read(inputs:, property: nil, request_options: {})
        #
        # @param inputs [Array<String>] Body param: Strings to input.
        #
        # @param property [String] Query param:
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::BatchResponsePublicActor]
        #
        # @see HubspotSDK::Models::Conversations::ActorBatchReadParams
        def batch_read(params)
          parsed, options = HubspotSDK::Conversations::ActorBatchReadParams.dump_request(params)
          query_params = [:property]
          @client.request(
            method: :post,
            path: "conversations/v3/conversations/actors/batch/read",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: HubspotSDK::Conversations::BatchResponsePublicActor,
            options: options
          )
        end

        # @overload get(actor_id, property: nil, request_options: {})
        #
        # @param actor_id [String]
        # @param property [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::AgentActor, HubspotSDK::Models::Conversations::BotActor, HubspotSDK::Models::Conversations::IntegratorActor, HubspotSDK::Models::Conversations::SystemActor, HubspotSDK::Models::Conversations::VisitorActor, HubspotSDK::Models::Conversations::EmailActor, HubspotSDK::Models::Conversations::LlmActor]
        #
        # @see HubspotSDK::Models::Conversations::ActorGetParams
        def get(actor_id, params = {})
          parsed, options = HubspotSDK::Conversations::ActorGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/actors/%1$s", actor_id],
            query: parsed,
            model: HubspotSDK::Conversations::PublicActor,
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
