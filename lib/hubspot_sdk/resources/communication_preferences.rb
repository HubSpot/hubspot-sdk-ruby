# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CommunicationPreferences
      # @return [HubspotSDK::Resources::CommunicationPreferences::Definitions]
      attr_reader :definitions

      # @return [HubspotSDK::Resources::CommunicationPreferences::Statuses]
      attr_reader :statuses

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGenerateLinksParams}
      # for more details.
      #
      # Generate communication preference links for a subscriber. This endpoint allows
      # you to create URLs for managing preferences and unsubscribing, tailored to a
      # specific subscriber. It is useful for integrating communication preference
      # management into your applications.
      #
      # @overload generate_links(channel:, subscriber_id_string:, business_unit_id: nil, language: nil, subscription_id: nil, request_options: {})
      #
      # @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest::Channel] Query param
      #
      # @param subscriber_id_string [String] Body param: A string representing the unique identifier of the subscriber. This
      #
      # @param business_unit_id [Integer] Query param
      #
      # @param language [String] Body param: The language in which the generated link should be presented, repres
      #
      # @param subscription_id [Integer] Body param: The unique identifier for the subscription, represented as an intege
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::CommunicationPreferences::LinkGenerationResponse]
      #
      # @see HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGenerateLinksParams
      def generate_links(params)
        query_params = [:channel, :business_unit_id]
        parsed, options =
          HubspotSDK::CommunicationPreferences::CommunicationPreferenceGenerateLinksParams.dump_request(params)
        query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "communication-preferences/2026-03/links/generate",
          query: query.transform_keys(business_unit_id: "businessUnitId"),
          body: parsed.except(*query_params),
          model: HubspotSDK::CommunicationPreferences::LinkGenerationResponse,
          options: options
        )
      end

      # Retrieve a contact's current email subscription preferences.
      #
      # @overload get_statuses(subscriber_id_string, channel:, business_unit_id: nil, request_options: {})
      #
      # @param subscriber_id_string [String]
      # @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel]
      # @param business_unit_id [Integer]
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus]
      #
      # @see HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams
      def get_statuses(subscriber_id_string, params)
        parsed, options =
          HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams.dump_request(params)
        query = HubspotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["communication-preferences/2026-03/statuses/%1$s", subscriber_id_string],
          query: query.transform_keys(business_unit_id: "businessUnitId"),
          model: HubspotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus,
          options: options
        )
      end

      # Check whether a contact has unsubscribed from all email subscriptions. If a
      # contact has not opted out of all communications, the response `results` array
      # will be empty.
      #
      # @overload get_unsubscribe_all_status(subscriber_id_string, channel:, business_unit_id: nil, verbose: nil, request_options: {})
      #
      # @param subscriber_id_string [String]
      # @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel]
      # @param business_unit_id [Integer]
      # @param verbose [Boolean]
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicWideStatus]
      #
      # @see HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams
      def get_unsubscribe_all_status(subscriber_id_string, params)
        parsed, options =
          HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams.dump_request(
            params
          )
        query = HubspotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["communication-preferences/2026-03/statuses/%1$s/unsubscribe-all", subscriber_id_string],
          query: query.transform_keys(business_unit_id: "businessUnitId"),
          model: HubspotSDK::CommunicationPreferences::ActionResponseWithResultsPublicWideStatus,
          options: options
        )
      end

      # Unsubscribe a contact from all email subscriptions.
      #
      # @overload unsubscribe_all(subscriber_id_string, channel:, business_unit_id: nil, verbose: nil, request_options: {})
      #
      # @param subscriber_id_string [String]
      # @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel]
      # @param business_unit_id [Integer]
      # @param verbose [Boolean]
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus]
      #
      # @see HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams
      def unsubscribe_all(subscriber_id_string, params)
        parsed, options =
          HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams.dump_request(params)
        query = HubspotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :post,
          path: ["communication-preferences/2026-03/statuses/%1$s/unsubscribe-all", subscriber_id_string],
          query: query.transform_keys(business_unit_id: "businessUnitId"),
          model: HubspotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUpdateStatusParams}
      # for more details.
      #
      # Set the subscription status of a specific contact.
      #
      # @overload update_status(subscriber_id_string, channel:, status_state:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil, request_options: {})
      #
      # @param subscriber_id_string [String]
      #
      # @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::Channel] The type of communication channel, with 'EMAIL' as the only supported option.
      #
      # @param status_state [Symbol, HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::StatusState] The current subscription status of the contact, which can be 'SUBSCRIBED', 'UNSU
      #
      # @param subscription_id [Integer] The unique identifier of the subscription to be updated.
      #
      # @param legal_basis [Symbol, HubspotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis] The legal basis for communication, with options including 'LEGITIMATE_INTEREST_P
      #
      # @param legal_basis_explanation [String] An explanation for the legal basis used for communication.
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus]
      #
      # @see HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUpdateStatusParams
      def update_status(subscriber_id_string, params)
        parsed, options =
          HubspotSDK::CommunicationPreferences::CommunicationPreferenceUpdateStatusParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["communication-preferences/2026-03/statuses/%1$s", subscriber_id_string],
          body: parsed,
          model: HubspotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus,
          options: options
        )
      end

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @definitions = HubspotSDK::Resources::CommunicationPreferences::Definitions.new(client: client)
        @statuses = HubspotSDK::Resources::CommunicationPreferences::Statuses.new(client: client)
      end
    end
  end
end
