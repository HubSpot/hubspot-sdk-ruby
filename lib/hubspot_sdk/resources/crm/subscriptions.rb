# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Subscriptions
        # Cancel an active commerce subscription using the subscription ID.
        #
        # @overload cancel(object_id_, request_options: {})
        #
        # @param object_id_ [Integer] subscription CRM id
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Crm::SubscriptionCancelParams
        def cancel(object_id_, params = {})
          @client.request(
            method: :post,
            path: ["payments-subscriptions/v1/subscriptions/crm/%1$s/cancel", object_id_],
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: params[:request_options]
          )
        end

        # Pause an active subscription using the subscription ID.
        #
        # @overload pause(object_id_, pause_reason: nil, request_options: {})
        #
        # @param object_id_ [Integer] subscription CRM id
        #
        # @param pause_reason [String]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Crm::SubscriptionPauseParams
        def pause(object_id_, params = {})
          parsed, options = HubspotSDK::Crm::SubscriptionPauseParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["payments-subscriptions/v1/subscriptions/crm/%1$s/pause", object_id_],
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Resume a previously paused subscription using the subscription ID.
        #
        # @overload unpause(object_id_, proposed_next_billing_date:, request_options: {})
        #
        # @param object_id_ [Integer] subscription CRM id
        #
        # @param proposed_next_billing_date [Integer]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Crm::SubscriptionUnpauseParams
        def unpause(object_id_, params)
          parsed, options = HubspotSDK::Crm::SubscriptionUnpauseParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["payments-subscriptions/v1/subscriptions/crm/%1$s/unpause", object_id_],
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
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
