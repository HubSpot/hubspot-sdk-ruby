# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        # @return [HubspotSDK::Resources::Marketing::Subscriptions::V4]
        attr_reader :v4

        # Get a list of all subscription definitions for the portal
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::SubscriptionDefinitionsResponse]
        #
        # @see HubspotSDK::Models::Marketing::SubscriptionListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "communication-preferences/v3/definitions",
            model: HubspotSDK::Marketing::SubscriptionDefinitionsResponse,
            options: params[:request_options]
          )
        end

        # Returns a list of subscriptions and their status for a given contact.
        #
        # @overload get_email_status(email_address, request_options: {})
        #
        # @param email_address [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicSubscriptionStatusesResponse]
        #
        # @see HubspotSDK::Models::Marketing::SubscriptionGetEmailStatusParams
        def get_email_status(email_address, params = {})
          @client.request(
            method: :get,
            path: ["communication-preferences/v3/status/email/%1$s", email_address],
            model: HubspotSDK::Marketing::PublicSubscriptionStatusesResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::SubscriptionSubscribeParams} for more details.
        #
        # Subscribes a contact to the given subscription type. This API is not valid to
        # use for subscribing a contact at a brand or portal level and will return an
        # error.
        #
        # @overload subscribe(email_address:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil, request_options: {})
        #
        # @param email_address [String] Contact's email address.
        #
        # @param subscription_id [String] ID of the subscription being updated for the contact.
        #
        # @param legal_basis [Symbol, HubspotSDK::Models::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis] Legal basis for updating the contact's status (required for GDPR enabled portals
        #
        # @param legal_basis_explanation [String] A more detailed explanation to go with the legal basis (required for GDPR enable
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicSubscriptionStatus]
        #
        # @see HubspotSDK::Models::Marketing::SubscriptionSubscribeParams
        def subscribe(params)
          parsed, options = HubspotSDK::Marketing::SubscriptionSubscribeParams.dump_request(params)
          @client.request(
            method: :post,
            path: "communication-preferences/v3/subscribe",
            body: parsed,
            model: HubspotSDK::Marketing::PublicSubscriptionStatus,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::SubscriptionUnsubscribeParams} for more details.
        #
        # Unsubscribes a contact from the given subscription type. This API is not valid
        # to use for unsubscribing a contact at a brand or portal level and will return an
        # error.
        #
        # @overload unsubscribe(email_address:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil, request_options: {})
        #
        # @param email_address [String] Contact's email address.
        #
        # @param subscription_id [String] ID of the subscription being updated for the contact.
        #
        # @param legal_basis [Symbol, HubspotSDK::Models::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis] Legal basis for updating the contact's status (required for GDPR enabled portals
        #
        # @param legal_basis_explanation [String] A more detailed explanation to go with the legal basis (required for GDPR enable
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::PublicSubscriptionStatus]
        #
        # @see HubspotSDK::Models::Marketing::SubscriptionUnsubscribeParams
        def unsubscribe(params)
          parsed, options = HubspotSDK::Marketing::SubscriptionUnsubscribeParams.dump_request(params)
          @client.request(
            method: :post,
            path: "communication-preferences/v3/unsubscribe",
            body: parsed,
            model: HubspotSDK::Marketing::PublicSubscriptionStatus,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @v4 = HubspotSDK::Resources::Marketing::Subscriptions::V4.new(client: client)
        end
      end
    end
  end
end
