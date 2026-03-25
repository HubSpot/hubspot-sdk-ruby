# typed: strong

module HubspotSDK
  module Resources
    class CommunicationPreferences
      sig do
        returns(HubspotSDK::Resources::CommunicationPreferences::Definitions)
      end
      attr_reader :definitions

      sig { returns(HubspotSDK::Resources::CommunicationPreferences::Statuses) }
      attr_reader :statuses

      # Generate communication preference links for a subscriber. This endpoint allows
      # you to create URLs for managing preferences and unsubscribing, tailored to a
      # specific subscriber. It is useful for integrating communication preference
      # management into your applications.
      sig do
        params(
          channel:
            HubspotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::OrSymbol,
          subscriber_id_string: String,
          business_unit_id: Integer,
          language: String,
          subscription_id: Integer,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(HubspotSDK::CommunicationPreferences::LinkGenerationResponse)
      end
      def generate_links(
        # Query param: The communication channel for which the links are generated. Must
        # be 'EMAIL'.
        channel:,
        # Body param: A string representing the unique identifier of the subscriber. This
        # property is required.
        subscriber_id_string:,
        # Query param: The ID of the business unit associated with the request. Defaults
        # to 0.
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

      # Retrieve the subscription statuses for a specific email address. This endpoint
      # allows you to check the current subscription status for email communications,
      # which can be useful for managing communication preferences and ensuring
      # compliance with user preferences.
      sig do
        params(
          email_address: String,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(
          HubspotSDK::CommunicationPreferences::PublicSubscriptionStatusesResponse
        )
      end
      def get_status_by_email(
        # The email address of the recipient whose subscription status is being retrieved.
        email_address,
        request_options: {}
      )
      end

      # Retrieve a contact's current email subscription preferences.
      sig do
        params(
          subscriber_id_string: String,
          channel:
            HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel::OrSymbol,
          business_unit_id: Integer,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(
          HubspotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus
        )
      end
      def get_statuses(
        # The unique identifier of the subscriber whose communication preferences status
        # is being retrieved.
        subscriber_id_string,
        # A required string indicating the communication channel to retrieve the status
        # for. Valid value is 'EMAIL'.
        channel:,
        # An optional integer representing the business unit ID to filter the subscription
        # status.
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
            HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel::OrSymbol,
          business_unit_id: Integer,
          verbose: T::Boolean,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(
          HubspotSDK::CommunicationPreferences::ActionResponseWithResultsPublicWideStatus
        )
      end
      def get_unsubscribe_all_status(
        # The unique identifier of the subscriber whose unsubscribe status is being
        # retrieved.
        subscriber_id_string,
        # The communication channel to unsubscribe from. Must be 'EMAIL'.
        channel:,
        # The ID of the business unit associated with the communication preferences.
        business_unit_id: nil,
        # A boolean indicating whether to include detailed information in the response.
        # Defaults to false.
        verbose: nil,
        request_options: {}
      )
      end

      # Subscribe a user to a specific communication preference using their email
      # address and subscription ID. This endpoint allows you to manage subscription
      # statuses by updating them to 'subscribed' for a given email address. It is
      # useful for ensuring that users receive communications they have opted into.
      sig do
        params(
          email_address: String,
          subscription_id: String,
          legal_basis:
            HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol,
          legal_basis_explanation: String,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(
          HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus
        )
      end
      def subscribe(
        # The email address of the user whose subscription status is being updated. It is
        # a required field and must be a string.
        email_address:,
        # The unique identifier of the subscription for which the status is being updated.
        # It is a required field and must be a string.
        subscription_id:,
        # The legal basis for processing the subscription status change. It is an optional
        # field and must be a string with valid values including
        # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        legal_basis: nil,
        # An optional field providing an explanation for the legal basis used. It must be
        # a string.
        legal_basis_explanation: nil,
        request_options: {}
      )
      end

      # Unsubscribe a user from communication preferences. This endpoint allows you to
      # update the subscription status of a user to 'unsubscribed' for specified
      # communication channels. It is useful for managing user preferences and ensuring
      # compliance with user opt-out requests.
      sig do
        params(
          email_address: String,
          subscription_id: String,
          legal_basis:
            HubspotSDK::CommunicationPreferences::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol,
          legal_basis_explanation: String,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(
          HubspotSDK::CommunicationPreferences::PublicSubscriptionStatus
        )
      end
      def unsubscribe(
        # The email address of the user whose subscription status is being updated. It is
        # a required field and must be a string.
        email_address:,
        # The unique identifier of the subscription for which the status is being updated.
        # It is a required field and must be a string.
        subscription_id:,
        # The legal basis for processing the subscription status change. It is an optional
        # field and must be a string with valid values including
        # 'LEGITIMATE_INTEREST_PQL', 'LEGITIMATE_INTEREST_CLIENT',
        # 'PERFORMANCE_OF_CONTRACT', 'CONSENT_WITH_NOTICE', 'NON_GDPR',
        # 'PROCESS_AND_STORE', and 'LEGITIMATE_INTEREST_OTHER'.
        legal_basis: nil,
        # An optional field providing an explanation for the legal basis used. It must be
        # a string.
        legal_basis_explanation: nil,
        request_options: {}
      )
      end

      # Unsubscribe a subscriber from all communication channels. This endpoint allows
      # you to remove a subscriber from all communication preferences, effectively
      # opting them out from receiving any further communications. This can be useful
      # for ensuring compliance with user requests or legal requirements.
      sig do
        params(
          subscriber_id_string: String,
          channel:
            HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel::OrSymbol,
          business_unit_id: Integer,
          verbose: T::Boolean,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(
          HubspotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus
        )
      end
      def unsubscribe_all(
        # The unique identifier of the subscriber to be unsubscribed from all
        # communications.
        subscriber_id_string,
        # The communication channel from which to unsubscribe the subscriber. Must be
        # 'EMAIL'.
        channel:,
        # The ID of the business unit associated with the subscriber. This is an optional
        # parameter.
        business_unit_id: nil,
        # A boolean flag indicating whether to include detailed information in the
        # response. Defaults to false.
        verbose: nil,
        request_options: {}
      )
      end

      # Set the subscription status of a specific contact.
      sig do
        params(
          subscriber_id_string: String,
          channel:
            HubspotSDK::CommunicationPreferences::PartialPublicStatusRequest::Channel::OrSymbol,
          status_state:
            HubspotSDK::CommunicationPreferences::PartialPublicStatusRequest::StatusState::OrSymbol,
          subscription_id: Integer,
          legal_basis:
            HubspotSDK::CommunicationPreferences::PartialPublicStatusRequest::LegalBasis::OrSymbol,
          legal_basis_explanation: String,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(
          HubspotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus
        )
      end
      def update_status(
        # The unique identifier of the subscriber whose subscription status is to be
        # updated.
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
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
