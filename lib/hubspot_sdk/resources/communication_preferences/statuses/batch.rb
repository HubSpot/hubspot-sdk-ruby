# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CommunicationPreferences
      class Statuses
        class Batch
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CommunicationPreferences::Statuses::BatchGetUnsubscribeAllStatusesParams}
          # for more details.
          #
          # Retrieve the unsubscribe-all status for a batch of subscribers in a specified
          # channel. This endpoint is useful for checking the current unsubscribe-all status
          # of multiple subscribers at once, helping to manage and audit communication
          # preferences efficiently.
          #
          # @overload get_unsubscribe_all_statuses(channel:, inputs:, business_unit_id: nil, request_options: {})
          #
          # @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] Query param: The communication channel to check the unsubscribe-all status for.
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param business_unit_id [Integer] Query param: The ID of the business unit for which the statuses are being retrie
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse]
          #
          # @see HubspotSDK::Models::CommunicationPreferences::Statuses::BatchGetUnsubscribeAllStatusesParams
          def get_unsubscribe_all_statuses(params)
            query_params = [:channel, :business_unit_id]
            parsed, options =
              HubspotSDK::CommunicationPreferences::Statuses::BatchGetUnsubscribeAllStatusesParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "communication-preferences/2026-03/statuses/batch/unsubscribe-all/read",
              query: query.transform_keys(business_unit_id: "businessUnitId"),
              body: parsed.except(*query_params),
              model: HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CommunicationPreferences::Statuses::BatchReadParams} for
          # more details.
          #
          # Retrieve the subscription statuses for multiple subscribers in a batch
          # operation. This endpoint allows you to check the communication preferences of
          # several subscribers at once, which is useful for managing large lists of
          # contacts efficiently.
          #
          # @overload read(channel:, inputs:, business_unit_id: nil, request_options: {})
          #
          # @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] Query param: The communication channel to filter by. This parameter is required
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param business_unit_id [Integer] Query param: An optional identifier for the business unit. This is an integer va
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicStatusBulkResponse]
          #
          # @see HubspotSDK::Models::CommunicationPreferences::Statuses::BatchReadParams
          def read(params)
            query_params = [:channel, :business_unit_id]
            parsed, options = HubspotSDK::CommunicationPreferences::Statuses::BatchReadParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "communication-preferences/2026-03/statuses/batch/read",
              query: query.transform_keys(business_unit_id: "businessUnitId"),
              body: parsed.except(*query_params),
              model: HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CommunicationPreferences::Statuses::BatchUnsubscribeAllParams}
          # for more details.
          #
          # Unsubscribe a set of contacts from all email subscriptions.
          #
          # @overload unsubscribe_all(channel:, inputs:, business_unit_id: nil, verbose: nil, request_options: {})
          #
          # @param channel [Symbol, HubspotSDK::Models::BatchInputString::Channel] Query param: A required string specifying the communication channel. Currently,
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param business_unit_id [Integer] Query param: The ID of the business unit to which the operation applies. It is a
          #
          # @param verbose [Boolean] Query param: A boolean indicating whether to include detailed information in the
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse]
          #
          # @see HubspotSDK::Models::CommunicationPreferences::Statuses::BatchUnsubscribeAllParams
          def unsubscribe_all(params)
            query_params = [:channel, :business_unit_id, :verbose]
            parsed, options =
              HubspotSDK::CommunicationPreferences::Statuses::BatchUnsubscribeAllParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "communication-preferences/2026-03/statuses/batch/unsubscribe-all",
              query: query.transform_keys(business_unit_id: "businessUnitId"),
              body: parsed.except(*query_params),
              model: HubspotSDK::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CommunicationPreferences::Statuses::BatchUpdateStatusesParams}
          # for more details.
          #
          # Update the subscription status for a set of contacts.
          #
          # @overload update_statuses(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::CommunicationPreferences::PublicStatusRequest>] An array of PublicStatusRequest objects, each representing a subscription status
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus]
          #
          # @see HubspotSDK::Models::CommunicationPreferences::Statuses::BatchUpdateStatusesParams
          def update_statuses(params)
            parsed, options =
              HubspotSDK::CommunicationPreferences::Statuses::BatchUpdateStatusesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "communication-preferences/2026-03/statuses/batch/write",
              body: parsed,
              model: HubspotSDK::CommunicationPreferences::BatchResponsePublicStatus,
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
