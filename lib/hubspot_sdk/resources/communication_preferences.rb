# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class CommunicationPreferences
      # @return [HubSpotSDK::Resources::CommunicationPreferences::Definitions]
      attr_reader :definitions

      # @return [HubSpotSDK::Resources::CommunicationPreferences::Statuses]
      attr_reader :statuses

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGenerateLinksParams}
      # for more details.
      #
      # Generate communication preference links for a subscriber. This endpoint allows
      # you to create URLs for managing preferences and unsubscribing, tailored to a
      # specific subscriber. It is useful for integrating communication preference
      # management into your applications.
      #
      # @overload generate_links(channel:, subscriber_id_string:, business_unit_id: nil, language: nil, subscription_id: nil, request_options: {})
      #
      # @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::LinkGenerationRequest::Channel] Query param: The communication channel for which the links are generated. Must b
      #
      # @param subscriber_id_string [String] Body param: A string representing the unique identifier of the subscriber. This
      #
      # @param business_unit_id [Integer] Query param: The identifier of the business unit. Defaults to 0 if not specified
      #
      # @param language [String] Body param: The language in which the generated link should be presented, repres
      #
      # @param subscription_id [Integer] Body param: The unique identifier for the subscription, represented as an intege
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::CommunicationPreferences::LinkGenerationResponse]
      #
      # @see HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGenerateLinksParams
      def generate_links(params)
        query_params = [:channel, :business_unit_id]
        parsed, options =
          HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGenerateLinksParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "communication-preferences/2026-03/links/generate",
          query: query.transform_keys(business_unit_id: "businessUnitId"),
          body: parsed.except(*query_params),
          model: HubSpotSDK::CommunicationPreferences::LinkGenerationResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams}
      # for more details.
      #
      # Retrieve a contact's current email subscription preferences.
      #
      # @overload get_statuses(subscriber_id_string, channel:, business_unit_id: nil, request_options: {})
      #
      # @param subscriber_id_string [String] The unique identifier of the subscriber whose communication preferences status i
      #
      # @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel] The communication channel for which the subscription status is being retrieved.
      #
      # @param business_unit_id [Integer] The ID of the business unit to filter the subscription status by. This is an opt
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus]
      #
      # @see HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams
      def get_statuses(subscriber_id_string, params)
        parsed, options =
          HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["communication-preferences/2026-03/statuses/%1$s", subscriber_id_string],
          query: query.transform_keys(business_unit_id: "businessUnitId"),
          model: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams}
      # for more details.
      #
      # Check whether a contact has unsubscribed from all email subscriptions. If a
      # contact has not opted out of all communications, the response `results` array
      # will be empty.
      #
      # @overload get_unsubscribe_all_status(subscriber_id_string, channel:, business_unit_id: nil, verbose: nil, request_options: {})
      #
      # @param subscriber_id_string [String] The unique identifier of the subscriber to unsubscribe from all communication pr
      #
      # @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel] The communication channel from which to unsubscribe the subscriber. This is a re
      #
      # @param business_unit_id [Integer] The ID of the business unit to which the subscriber belongs. This is an optional
      #
      # @param verbose [Boolean] A boolean indicating whether to include detailed information in the response. De
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicWideStatus]
      #
      # @see HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams
      def get_unsubscribe_all_status(subscriber_id_string, params)
        parsed, options =
          HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams.dump_request(
            params
          )
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["communication-preferences/2026-03/statuses/%1$s/unsubscribe-all", subscriber_id_string],
          query: query.transform_keys(business_unit_id: "businessUnitId"),
          model: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicWideStatus,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams}
      # for more details.
      #
      # Unsubscribe a contact from all email subscriptions.
      #
      # @overload unsubscribe_all(subscriber_id_string, channel:, business_unit_id: nil, verbose: nil, request_options: {})
      #
      # @param subscriber_id_string [String] The unique identifier of the subscriber to unsubscribe from all communication pr
      #
      # @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel] The communication channel to unsubscribe from. Must be 'EMAIL'.
      #
      # @param business_unit_id [Integer] The ID of the business unit associated with the request. This is an optional int
      #
      # @param verbose [Boolean] A boolean indicating whether to include detailed information in the response. De
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus]
      #
      # @see HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams
      def unsubscribe_all(subscriber_id_string, params)
        parsed, options =
          HubSpotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :post,
          path: ["communication-preferences/2026-03/statuses/%1$s/unsubscribe-all", subscriber_id_string],
          query: query.transform_keys(business_unit_id: "businessUnitId"),
          model: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceUpdateStatusParams}
      # for more details.
      #
      # Set the subscription status of a specific contact.
      #
      # @overload update_status(subscriber_id_string, channel:, status_state:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil, request_options: {})
      #
      # @param subscriber_id_string [String] The unique identifier of the subscriber whose communication preferences status i
      #
      # @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::Channel] The type of communication channel, with 'EMAIL' as the only supported option.
      #
      # @param status_state [Symbol, HubSpotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::StatusState] The current subscription status of the contact, which can be 'SUBSCRIBED', 'UNSU
      #
      # @param subscription_id [Integer] The unique identifier of the subscription to be updated.
      #
      # @param legal_basis [Symbol, HubSpotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis] The legal basis for communication, with options including 'LEGITIMATE_INTEREST_P
      #
      # @param legal_basis_explanation [String] An explanation for the legal basis used for communication.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus]
      #
      # @see HubSpotSDK::Models::CommunicationPreferences::CommunicationPreferenceUpdateStatusParams
      def update_status(subscriber_id_string, params)
        parsed, options =
          HubSpotSDK::CommunicationPreferences::CommunicationPreferenceUpdateStatusParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["communication-preferences/2026-03/statuses/%1$s", subscriber_id_string],
          body: parsed,
          model: HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus,
          options: options
        )
      end

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @definitions = HubSpotSDK::Resources::CommunicationPreferences::Definitions.new(client: client)
        @statuses = HubSpotSDK::Resources::CommunicationPreferences::Statuses.new(client: client)
      end
    end
  end
end
