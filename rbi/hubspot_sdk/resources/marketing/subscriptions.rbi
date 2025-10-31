# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        sig { returns(HubspotSDK::Resources::Marketing::Subscriptions::V4) }
        attr_reader :v4

        # Get a list of all subscription definitions for the portal
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Marketing::SubscriptionDefinitionsResponse
          )
        end
        def list(request_options: {})
        end

        # Returns a list of subscriptions and their status for a given contact.
        sig do
          params(
            email_address: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicSubscriptionStatusesResponse)
        end
        def get_email_status(email_address, request_options: {})
        end

        # Subscribes a contact to the given subscription type. This API is not valid to
        # use for subscribing a contact at a brand or portal level and will return an
        # error.
        sig do
          params(
            email_address: String,
            subscription_id: String,
            legal_basis:
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol,
            legal_basis_explanation: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicSubscriptionStatus)
        end
        def subscribe(
          # Contact's email address.
          email_address:,
          # ID of the subscription being updated for the contact.
          subscription_id:,
          # Legal basis for updating the contact's status (required for GDPR enabled
          # portals).
          legal_basis: nil,
          # A more detailed explanation to go with the legal basis (required for GDPR
          # enabled portals).
          legal_basis_explanation: nil,
          request_options: {}
        )
        end

        # Unsubscribes a contact from the given subscription type. This API is not valid
        # to use for unsubscribing a contact at a brand or portal level and will return an
        # error.
        sig do
          params(
            email_address: String,
            subscription_id: String,
            legal_basis:
              HubspotSDK::Marketing::PublicUpdateSubscriptionStatusRequest::LegalBasis::OrSymbol,
            legal_basis_explanation: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Marketing::PublicSubscriptionStatus)
        end
        def unsubscribe(
          # Contact's email address.
          email_address:,
          # ID of the subscription being updated for the contact.
          subscription_id:,
          # Legal basis for updating the contact's status (required for GDPR enabled
          # portals).
          legal_basis: nil,
          # A more detailed explanation to go with the legal basis (required for GDPR
          # enabled portals).
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
end
