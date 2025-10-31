# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        class V4
          class Statuses
            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Marketing::Subscriptions::V4::StatusUpdateParams} for more
            # details.
            #
            # Set the subscription status of a specific contact.
            #
            # @overload update(subscriber_id_string, channel:, status_state:, subscription_id:, legal_basis: nil, legal_basis_explanation: nil, request_options: {})
            #
            # @param subscriber_id_string [String] The contact's email address.
            #
            # @param channel [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PartialPublicStatusRequest::Channel] The type of communication channel, with 'EMAIL' as the only supported option.
            #
            # @param status_state [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PartialPublicStatusRequest::StatusState] The current subscription status of the contact, which can be 'SUBSCRIBED', 'UNSU
            #
            # @param subscription_id [Integer] The unique identifier of the subscription to be updated.
            #
            # @param legal_basis [Symbol, HubspotSDK::Models::Marketing::Subscriptions::PartialPublicStatusRequest::LegalBasis] The legal basis for communication, with options including 'LEGITIMATE_INTEREST_P
            #
            # @param legal_basis_explanation [String] An explanation for the legal basis used for communication.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::StatusUpdateParams
            def update(subscriber_id_string, params)
              parsed, options = HubspotSDK::Marketing::Subscriptions::V4::StatusUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["communication-preferences/v4/statuses/%1$s", subscriber_id_string],
                body: parsed,
                model: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Marketing::Subscriptions::V4::StatusBatchGetParams} for
            # more details.
            #
            # Batch retrieve subscription statuses for a set of contacts.
            #
            # @overload batch_get(channel:, inputs:, business_unit_id: nil, request_options: {})
            #
            # @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] Query param: The channel type for the subscription type. Currently, the only sup
            #
            # @param inputs [Array<String>] Body param: Strings to input.
            #
            # @param business_unit_id [Integer] Query param: If you have the [business unit add-on](https://developers.hubspot.c
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::StatusBatchGetParams
            def batch_get(params)
              parsed, options = HubspotSDK::Marketing::Subscriptions::V4::StatusBatchGetParams.dump_request(params)
              query_params = [:channel, :business_unit_id]
              @client.request(
                method: :post,
                path: "communication-preferences/v4/statuses/batch/read",
                query: parsed.slice(*query_params).transform_keys(business_unit_id: "businessUnitId"),
                body: parsed.except(*query_params),
                model: HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Marketing::Subscriptions::V4::StatusBatchGetUnsubscribeAllStatusParams}
            # for more details.
            #
            # Checks whether a set of contacts have opted out of all communications.
            #
            # @overload batch_get_unsubscribe_all_status(channel:, inputs:, business_unit_id: nil, request_options: {})
            #
            # @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] Query param: The channel type for the subscription type. Currently, the only sup
            #
            # @param inputs [Array<String>] Body param: Strings to input.
            #
            # @param business_unit_id [Integer] Query param: If you have the [business unit add-on](https://developers.hubspot.c
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::BatchResponsePublicWideStatusBulkResponse]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::StatusBatchGetUnsubscribeAllStatusParams
            def batch_get_unsubscribe_all_status(params)
              parsed, options =
                HubspotSDK::Marketing::Subscriptions::V4::StatusBatchGetUnsubscribeAllStatusParams.dump_request(params)
              query_params = [:channel, :business_unit_id]
              @client.request(
                method: :post,
                path: "communication-preferences/v4/statuses/batch/unsubscribe-all/read",
                query: parsed.slice(*query_params).transform_keys(business_unit_id: "businessUnitId"),
                body: parsed.except(*query_params),
                model: HubspotSDK::Marketing::Subscriptions::BatchResponsePublicWideStatusBulkResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Marketing::Subscriptions::V4::StatusBatchUnsubscribeAllParams}
            # for more details.
            #
            # Unsubscribe a set of contacts from all email subscriptions.
            #
            # @overload batch_unsubscribe_all(channel:, inputs:, business_unit_id: nil, verbose: nil, request_options: {})
            #
            # @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] Query param: The channel type for the subscription type. Currently, the only sup
            #
            # @param inputs [Array<String>] Body param: Strings to input.
            #
            # @param business_unit_id [Integer] Query param: If you have the [business unit add-on](https://developers.hubspot.c
            #
            # @param verbose [Boolean] Query param: Set to `true` to include the details of the updated subscription st
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::BatchResponsePublicBulkOptOutFromAllResponse]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::StatusBatchUnsubscribeAllParams
            def batch_unsubscribe_all(params)
              parsed, options =
                HubspotSDK::Marketing::Subscriptions::V4::StatusBatchUnsubscribeAllParams.dump_request(params)
              query_params = [:channel, :business_unit_id, :verbose]
              @client.request(
                method: :post,
                path: "communication-preferences/v4/statuses/batch/unsubscribe-all",
                query: parsed.slice(*query_params).transform_keys(business_unit_id: "businessUnitId"),
                body: parsed.except(*query_params),
                model: HubspotSDK::Marketing::Subscriptions::BatchResponsePublicBulkOptOutFromAllResponse,
                options: options
              )
            end

            # Update the subscription status for a set of contacts.
            #
            # @overload batch_update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Marketing::Subscriptions::PublicStatusRequest>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::BatchResponsePublicStatus]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::StatusBatchUpdateParams
            def batch_update(params)
              parsed, options = HubspotSDK::Marketing::Subscriptions::V4::StatusBatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "communication-preferences/v4/statuses/batch/write",
                body: parsed,
                model: HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatus,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Marketing::Subscriptions::V4::StatusGetParams} for more
            # details.
            #
            # Retrieve a contact's current email subscription preferences.
            #
            # @overload get(subscriber_id_string, channel:, business_unit_id: nil, request_options: {})
            #
            # @param subscriber_id_string [String] The contact's email address.
            #
            # @param channel [Symbol, HubspotSDK::Models::Marketing::Subscriptions::V4::StatusGetParams::Channel] The channel type for the subscription type. Currently, the only supported channe
            #
            # @param business_unit_id [Integer] If you have the [business unit add-on](https://developers.hubspot.com/beta-docs/
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::StatusGetParams
            def get(subscriber_id_string, params)
              parsed, options = HubspotSDK::Marketing::Subscriptions::V4::StatusGetParams.dump_request(params)
              @client.request(
                method: :get,
                path: ["communication-preferences/v4/statuses/%1$s", subscriber_id_string],
                query: parsed.transform_keys(business_unit_id: "businessUnitId"),
                model: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Marketing::Subscriptions::V4::StatusGetUnsubscribeAllStatusParams}
            # for more details.
            #
            # Check whether a contact has unsubscribed from all email subscriptions. If a
            # contact has not opted out of all communications, the response `results` array
            # will be empty.
            #
            # @overload get_unsubscribe_all_status(subscriber_id_string, channel:, business_unit_id: nil, verbose: nil, request_options: {})
            #
            # @param subscriber_id_string [String] The contact's email address.
            #
            # @param channel [Symbol, HubspotSDK::Models::Marketing::Subscriptions::V4::StatusGetUnsubscribeAllStatusParams::Channel] The channel type for the subscription type. Currently, the only supported channe
            #
            # @param business_unit_id [Integer] If you have the [business unit add-on](https://developers.hubspot.com/beta-docs/
            #
            # @param verbose [Boolean] Set to `true` to include the details of the updated subscription statuses in the
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsPublicWideStatus]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::StatusGetUnsubscribeAllStatusParams
            def get_unsubscribe_all_status(subscriber_id_string, params)
              parsed, options =
                HubspotSDK::Marketing::Subscriptions::V4::StatusGetUnsubscribeAllStatusParams.dump_request(params)
              @client.request(
                method: :get,
                path: ["communication-preferences/v4/statuses/%1$s/unsubscribe-all", subscriber_id_string],
                query: parsed.transform_keys(business_unit_id: "businessUnitId"),
                model: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicWideStatus,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Marketing::Subscriptions::V4::StatusUnsubscribeAllParams}
            # for more details.
            #
            # Unsubscribe a contact from all email subscriptions.
            #
            # @overload unsubscribe_all(subscriber_id_string, channel:, business_unit_id: nil, verbose: nil, request_options: {})
            #
            # @param subscriber_id_string [String] The contact's email address.
            #
            # @param channel [Symbol, HubspotSDK::Models::Marketing::Subscriptions::V4::StatusUnsubscribeAllParams::Channel] The channel type for the subscription type. Currently, the only supported channe
            #
            # @param business_unit_id [Integer] If you have the [business unit add-on](https://developers.hubspot.com/beta-docs/
            #
            # @param verbose [Boolean] Set to `true` to include the details of the updated subscription statuses in the
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus]
            #
            # @see HubspotSDK::Models::Marketing::Subscriptions::V4::StatusUnsubscribeAllParams
            def unsubscribe_all(subscriber_id_string, params)
              parsed, options =
                HubspotSDK::Marketing::Subscriptions::V4::StatusUnsubscribeAllParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["communication-preferences/v4/statuses/%1$s/unsubscribe-all", subscriber_id_string],
                query: parsed.transform_keys(business_unit_id: "businessUnitId"),
                model: HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus,
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
end
