# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Actions
        class Callbacks
          # Complete a specific blocked action execution by ID.
          #
          # @overload complete(callback_id, output_fields:, request_options: {})
          #
          # @param callback_id [String] The ID of the action execution.
          #
          # @param output_fields [Hash{Symbol=>String}]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Automation::Actions::CallbackCompleteParams
          def complete(callback_id, params)
            parsed, options = HubspotSDK::Automation::Actions::CallbackCompleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["automation/v4/actions/callbacks/%1$s/complete", callback_id],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Complete a batch of blocked action executions.
          #
          # @overload complete_batch(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Automation::CallbackCompletionBatchRequest>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Automation::Actions::CallbackCompleteBatchParams
          def complete_batch(params)
            parsed, options = HubspotSDK::Automation::Actions::CallbackCompleteBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "automation/v4/actions/callbacks/complete",
              body: parsed,
              model: NilClass,
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
