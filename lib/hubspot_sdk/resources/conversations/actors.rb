# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class Actors
        # Resolve a set of `ActorId`s to the underlying actors/participants.
        #
        # @overload batch_read(inputs:, request_options: {})
        #
        # @param inputs [Array<String>] Strings to input.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::BatchResponsePublicActor]
        #
        # @see HubspotSDK::Models::Conversations::ActorBatchReadParams
        def batch_read(params)
          parsed, options = HubspotSDK::Conversations::ActorBatchReadParams.dump_request(params)
          @client.request(
            method: :post,
            path: "conversations/v3/conversations/actors/batch/read",
            body: parsed,
            model: HubspotSDK::Conversations::BatchResponsePublicActor,
            options: options
          )
        end

        # Retrieve details of a single actor using the actor ID.
        #
        # @overload get(actor_id, request_options: {})
        #
        # @param actor_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Conversations::AgentActor, HubspotSDK::Models::Conversations::BotActor, HubspotSDK::Models::Conversations::IntegratorActor, HubspotSDK::Models::Conversations::SystemActor, HubspotSDK::Models::Conversations::VisitorActor, HubspotSDK::Models::Conversations::EmailActor, HubspotSDK::Models::Conversations::LlmActor]
        #
        # @see HubspotSDK::Models::Conversations::ActorGetParams
        def get(actor_id, params = {})
          @client.request(
            method: :get,
            path: ["conversations/v3/conversations/actors/%1$s", actor_id],
            model: HubspotSDK::Conversations::PublicActor,
            options: params[:request_options]
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
