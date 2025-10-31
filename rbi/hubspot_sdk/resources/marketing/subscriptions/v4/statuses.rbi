# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        class V4
          class Statuses
            # Set the subscription status of a specific contact.
            sig do
              params(
                subscriber_id_string: String,
                channel:
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::Channel::OrSymbol,
                status_state:
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState::OrSymbol,
                subscription_id: Integer,
                legal_basis:
                  HubspotSDK::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis::OrSymbol,
                legal_basis_explanation: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus
              )
            end
            def update(
              # The contact's email address.
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

            # Batch retrieve subscription statuses for a set of contacts.
            sig do
              params(
                channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
                inputs: T::Array[String],
                business_unit_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse
              )
            end
            def batch_get(
              # Query param: The channel type for the subscription type. Currently, the only
              # supported channel type is `EMAIL`.
              channel:,
              # Body param: Strings to input.
              inputs:,
              # Query param: If you have the
              # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
              # include this parameter to filter results by business unit ID. The default
              # Account business unit will always use `0`.
              business_unit_id: nil,
              request_options: {}
            )
            end

            # Checks whether a set of contacts have opted out of all communications.
            sig do
              params(
                channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
                inputs: T::Array[String],
                business_unit_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicWideStatusBulkResponse
              )
            end
            def batch_get_unsubscribe_all_status(
              # Query param: The channel type for the subscription type. Currently, the only
              # supported channel type is `EMAIL`.
              channel:,
              # Body param: Strings to input.
              inputs:,
              # Query param: If you have the
              # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
              # include this parameter to filter results by business unit ID. The default
              # Account business unit will always use `0`.
              business_unit_id: nil,
              request_options: {}
            )
            end

            # Unsubscribe a set of contacts from all email subscriptions.
            sig do
              params(
                channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
                inputs: T::Array[String],
                business_unit_id: Integer,
                verbose: T::Boolean,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicBulkOptOutFromAllResponse
              )
            end
            def batch_unsubscribe_all(
              # Query param: The channel type for the subscription type. Currently, the only
              # supported channel type is `EMAIL`.
              channel:,
              # Body param: Strings to input.
              inputs:,
              # Query param: If you have the
              # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
              # include this parameter to filter results by business unit ID. The default
              # Account business unit will always use `0`.
              business_unit_id: nil,
              # Query param: Set to `true` to include the details of the updated subscription
              # statuses in the response. Not including this parameter will result in an empty
              # response.
              verbose: nil,
              request_options: {}
            )
            end

            # Update the subscription status for a set of contacts.
            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::Marketing::Subscriptions::PublicStatusRequest::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatus
              )
            end
            def batch_update(inputs:, request_options: {})
            end

            # Retrieve a contact's current email subscription preferences.
            sig do
              params(
                subscriber_id_string: String,
                channel:
                  HubspotSDK::Marketing::Subscriptions::V4::StatusGetParams::Channel::OrSymbol,
                business_unit_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus
              )
            end
            def get(
              # The contact's email address.
              subscriber_id_string,
              # The channel type for the subscription type. Currently, the only supported
              # channel type is `EMAIL`.
              channel:,
              # If you have the
              # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
              # include this parameter to filter results by business unit ID. The default
              # Account business unit will always use `0`.
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
                  HubspotSDK::Marketing::Subscriptions::V4::StatusGetUnsubscribeAllStatusParams::Channel::OrSymbol,
                business_unit_id: Integer,
                verbose: T::Boolean,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicWideStatus
              )
            end
            def get_unsubscribe_all_status(
              # The contact's email address.
              subscriber_id_string,
              # The channel type for the subscription type. Currently, the only supported
              # channel type is `EMAIL`.
              channel:,
              # If you have the
              # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
              # include this parameter to filter results by business unit ID. The default
              # Account business unit will always use `0`.
              business_unit_id: nil,
              # Set to `true` to include the details of the updated subscription statuses in the
              # response. Not including this parameter will result in an empty response.
              verbose: nil,
              request_options: {}
            )
            end

            # Unsubscribe a contact from all email subscriptions.
            sig do
              params(
                subscriber_id_string: String,
                channel:
                  HubspotSDK::Marketing::Subscriptions::V4::StatusUnsubscribeAllParams::Channel::OrSymbol,
                business_unit_id: Integer,
                verbose: T::Boolean,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus
              )
            end
            def unsubscribe_all(
              # The contact's email address.
              subscriber_id_string,
              # The channel type for the subscription type. Currently, the only supported
              # channel type is `EMAIL`.
              channel:,
              # If you have the
              # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
              # include this parameter to filter results by business unit ID. The default
              # Account business unit will always use `0`.
              business_unit_id: nil,
              # Set to `true` to include the details of the updated subscription statuses in the
              # response. Not including this parameter will result in an empty response.
              verbose: nil,
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
  end
end
