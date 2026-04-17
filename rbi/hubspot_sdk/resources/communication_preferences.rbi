# typed: strong

module HubSpotSDK
  module Resources
    class CommunicationPreferences
      sig do
        returns(HubSpotSDK::Resources::CommunicationPreferences::Definitions)
      end
      attr_reader :definitions

      sig { returns(HubSpotSDK::Resources::CommunicationPreferences::Statuses) }
      attr_reader :statuses

      # Generate communication preference links for a subscriber. This endpoint allows
      # you to create URLs for managing preferences and unsubscribing, tailored to a
      # specific subscriber. It is useful for integrating communication preference
      # management into your applications.
      sig do
        params(
          channel:
            HubSpotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::OrSymbol,
          subscriber_id_string: String,
          business_unit_id: Integer,
          language: String,
          subscription_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::CommunicationPreferences::LinkGenerationResponse)
      end
      def generate_links(
        # Query param: The communication channel for which the links are generated. Must
        # be 'EMAIL'.
        channel:,
        # Body param: A string representing the unique identifier of the subscriber. This
        # property is required.
        subscriber_id_string:,
        # Query param: The identifier of the business unit. Defaults to 0 if not
        # specified.
        business_unit_id: nil,
        # Body param: The language in which the generated link should be presented,
        # represented as a string.
        language: nil,
        # Body param: The unique identifier for the subscription, represented as an
        # integer in int64 format.
        subscription_id: nil,
        request_options: {}
      )
      end

      # Retrieve a contact's current email subscription preferences.
      sig do
        params(
          subscriber_id_string: String,
          channel:
            HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel::OrSymbol,
          business_unit_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(
          HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus
        )
      end
      def get_statuses(
        # The unique identifier of the subscriber whose communication preferences status
        # is being retrieved.
        subscriber_id_string,
        # The communication channel for which the subscription status is being retrieved.
        # This parameter is required and currently supports only 'EMAIL'.
        channel:,
        # The ID of the business unit to filter the subscription status by. This is an
        # optional parameter.
        business_unit_id: nil,
        request_options: {}
      )
      end

      # Check whether a contact has unsubscribed from all email subscriptions. If a
      # contact has not opted out of all communications, the response `results` array
      # will be empty.
      sig do
        params(
          subscriber_id_string: String,
          channel:
            HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel::OrSymbol,
          business_unit_id: Integer,
          verbose: T::Boolean,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(
          HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicWideStatus
        )
      end
      def get_unsubscribe_all_status(
        # The unique identifier of the subscriber to unsubscribe from all communication
        # preferences.
        subscriber_id_string,
        # The communication channel from which to unsubscribe the subscriber. This is a
        # required parameter and must be 'EMAIL'.
        channel:,
        # The ID of the business unit to which the subscriber belongs. This is an optional
        # parameter.
        business_unit_id: nil,
        # A boolean indicating whether to include detailed information in the response.
        # Defaults to false.
        verbose: nil,
        request_options: {}
      )
      end

      # Unsubscribe a contact from all email subscriptions.
      sig do
        params(
          subscriber_id_string: String,
          channel:
            HubSpotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel::OrSymbol,
          business_unit_id: Integer,
          verbose: T::Boolean,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(
          HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus
        )
      end
      def unsubscribe_all(
        # The unique identifier of the subscriber to unsubscribe from all communication
        # preferences.
        subscriber_id_string,
        # The communication channel to unsubscribe from. Must be 'EMAIL'.
        channel:,
        # The ID of the business unit associated with the request. This is an optional
        # integer parameter.
        business_unit_id: nil,
        # A boolean indicating whether to include detailed information in the response.
        # Defaults to false.
        verbose: nil,
        request_options: {}
      )
      end

      # Set the subscription status of a specific contact.
      sig do
        params(
          subscriber_id_string: String,
          channel:
            HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::Channel::OrSymbol,
          status_state:
            HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState::OrSymbol,
          subscription_id: Integer,
          legal_basis:
            HubSpotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::OrSymbol,
          legal_basis_explanation: String,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(
          HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus
        )
      end
      def update_status(
        # The unique identifier of the subscriber whose communication preferences status
        # is being updated.
        subscriber_id_string,
        # The type of communication channel, with 'EMAIL' as the only supported option.
        channel:,
        # The current subscription status of the contact, which can be 'SUBSCRIBED',
        # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        status_state:,
        # The unique identifier of the subscription to be updated.
        subscription_id:,
        # The legal basis for communication, with options including
        # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        legal_basis: nil,
        # An explanation for the legal basis used for communication.
        legal_basis_explanation: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
