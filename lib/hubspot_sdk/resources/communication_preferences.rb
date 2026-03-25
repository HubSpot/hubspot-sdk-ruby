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
      # @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest::Channel] Query param: The communication channel for which the links are generated. Must b
      #
      # @param subscriber_id_string [String] Body param: A string representing the unique identifier of the subscriber. This
      #
      # @param business_unit_id [Integer] Query param: The ID of the business unit associated with the request. Defaults t
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

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusByEmailParams}
      # for more details.
      #
      # Retrieve the subscription statuses for a specific email address. This endpoint
      # allows you to check the current subscription status for email communications,
      # which can be useful for managing communication preferences and ensuring
      # compliance with user preferences.
      #
      # @overload get_status_by_email(email_address, request_options: {})
      #
      # @param email_address [String] The email address of the recipient whose subscription status is being retrieved.
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatusesResponse]
      #
      # @see HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusByEmailParams
      def get_status_by_email(email_address, params = {})
        @client.request(
          method: :get,
          path: ["communication-preferences/2026-03/status/email/%1$s", email_address],
          model: HubspotSDK::CommunicationPreferences::PublicSubscriptionStatusesResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams}
      # for more details.
      #
      # Retrieve a contact's current email subscription preferences.
      #
      # @overload get_statuses(subscriber_id_string, channel:, business_unit_id: nil, request_options: {})
      #
      # @param subscriber_id_string [String] The unique identifier of the subscriber whose communication preferences status i
      #
      # @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel] A required string indicating the communication channel to retrieve the status fo
      #
      # @param business_unit_id [Integer] An optional integer representing the business unit ID to filter the subscription
      #
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

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams}
      # for more details.
      #
      # Check whether a contact has unsubscribed from all email subscriptions. If a
      # contact has not opted out of all communications, the response `results` array
      # will be empty.
      #
      # @overload get_unsubscribe_all_status(subscriber_id_string, channel:, business_unit_id: nil, verbose: nil, request_options: {})
      #
      # @param subscriber_id_string [String] The unique identifier of the subscriber whose unsubscribe status is being retrie
      #
      # @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel] The communication channel to unsubscribe from. Must be 'EMAIL'.
      #
      # @param business_unit_id [Integer] The ID of the business unit associated with the communication preferences.
      #
      # @param verbose [Boolean] A boolean indicating whether to include detailed information in the response. De
      #
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

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceSubscribeParams}
      # for more details.
      #
      # Subscribe a user to a specific communication preference using their email
      # address and subscription ID. This endpoint allows you to manage subscription
      # statuses by updating them to 'subscribed' for a given email address. It is
      # useful for ensuring that users receive communications they have opted into.
      #
      # @overload subscribe(email_address:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil, request_options: {})
      #
      # @param email_address [String] The email address of the user whose subscription status is being updated. It is
      #
      # @param subscription_id [String] The unique identifier of the subscription for which the status is being updated.
      #
      # @param legal_basis [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis] The legal basis for processing the subscription status change. It is an optional
      #
      # @param legal_basis_explanation [String] An optional field providing an explanation for the legal basis used. It must be
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus]
      #
      # @see HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceSubscribeParams
      def subscribe(params)
        parsed, options =
          HubspotSDK::CommunicationPreferences::CommunicationPreferenceSubscribeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "communication-preferences/2026-03/subscribe",
          body: parsed,
          model: HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeParams}
      # for more details.
      #
      # Unsubscribe a user from communication preferences. This endpoint allows you to
      # update the subscription status of a user to 'unsubscribed' for specified
      # communication channels. It is useful for managing user preferences and ensuring
      # compliance with user opt-out requests.
      #
      # @overload unsubscribe(email_address:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil, request_options: {})
      #
      # @param email_address [String] The email address of the user whose subscription status is being updated. It is
      #
      # @param subscription_id [String] The unique identifier of the subscription for which the status is being updated.
      #
      # @param legal_basis [Symbol, HubspotSDK::Models::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis] The legal basis for processing the subscription status change. It is an optional
      #
      # @param legal_basis_explanation [String] An optional field providing an explanation for the legal basis used. It must be
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::CommunicationPreferences::PublicSubscriptionStatus]
      #
      # @see HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeParams
      def unsubscribe(params)
        parsed, options =
          HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "communication-preferences/2026-03/unsubscribe",
          body: parsed,
          model: HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams}
      # for more details.
      #
      # Unsubscribe a subscriber from all communication channels. This endpoint allows
      # you to remove a subscriber from all communication preferences, effectively
      # opting them out from receiving any further communications. This can be useful
      # for ensuring compliance with user requests or legal requirements.
      #
      # @overload unsubscribe_all(subscriber_id_string, channel:, business_unit_id: nil, verbose: nil, request_options: {})
      #
      # @param subscriber_id_string [String] The unique identifier of the subscriber to be unsubscribed from all communicatio
      #
      # @param channel [Symbol, HubspotSDK::Models::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel] The communication channel from which to unsubscribe the subscriber. Must be 'EMA
      #
      # @param business_unit_id [Integer] The ID of the business unit associated with the subscriber. This is an optional
      #
      # @param verbose [Boolean] A boolean flag indicating whether to include detailed information in the respons
      #
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
      # @param subscriber_id_string [String] The unique identifier of the subscriber whose subscription status is to be updat
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
