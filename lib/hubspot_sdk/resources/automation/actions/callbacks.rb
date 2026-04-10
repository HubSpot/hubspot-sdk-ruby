# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Automation
      class Actions
        class Callbacks
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Automation::Actions::CallbackCompleteParams} for more
          # details.
          #
          # Complete a specific blocked action execution by ID.
          #
          # @overload complete(callback_id, output_fields:, typed_outputs:, failure_reason_type: nil, request_context: nil, request_options: {})
          #
          # @param callback_id [String]
          #
          # @param output_fields [Hash{Symbol=>String}] Contains the output fields associated with the callback, with each field represe
          #
          # @param typed_outputs [Object] Holds the typed outputs related to the callback, structured as an object.
          #
          # @param failure_reason_type [String] Indicates the reason for the failure of a callback completion.
          #
          # @param request_context [HubSpotSDK::Models::Automation::WorkflowsRequestContext, HubSpotSDK::Models::Automation::AgentRequestContext, HubSpotSDK::Models::Automation::CopilotRequestContext, HubSpotSDK::Models::Automation::StandaloneRequestContext, HubSpotSDK::Models::Automation::TestRequestContext] Specifies the context in which the request is made, which can be one of several
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Automation::Actions::CallbackCompleteParams
          def complete(callback_id, params)
            parsed, options = HubSpotSDK::Automation::Actions::CallbackCompleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["automation/actions/callbacks/2026-03/%1$s/complete", callback_id],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Complete a batch of blocked action executions.
          #
          # @overload complete_batch(inputs:, request_options: {})
          #
          # @param inputs [Array<HubSpotSDK::Models::Automation::CallbackCompletionBatchRequest>]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Automation::Actions::CallbackCompleteBatchParams
          def complete_batch(params)
            parsed, options = HubSpotSDK::Automation::Actions::CallbackCompleteBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "automation/actions/callbacks/2026-03/complete",
              body: parsed,
              model: NilClass,
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
end
