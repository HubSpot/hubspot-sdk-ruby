# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class CommunicationPreferences
      class Statuses
        class Batch
          # Checks whether a set of contacts have opted out of all communications.
          #
          # @overload get_unsubscribe_all_statuses(channel:, inputs:, business_unit_id: nil, request_options: {})
          #
          # @param channel [Symbol, HubSpotSDK::Models::BatchInputString::Channel] Query param
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param business_unit_id [Integer] Query param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse]
          #
          # @see HubSpotSDK::Models::CommunicationPreferences::Statuses::BatchGetUnsubscribeAllStatusesParams
          def get_unsubscribe_all_statuses(params)
            query_params = [:channel, :business_unit_id]
            parsed, options =
              HubSpotSDK::CommunicationPreferences::Statuses::BatchGetUnsubscribeAllStatusesParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "communication-preferences/2026-03/statuses/batch/unsubscribe-all/read",
              query: query.transform_keys(business_unit_id: "businessUnitId"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse,
              options: options
            )
          end

          # Batch retrieve subscription statuses for a set of contacts.
          #
          # @overload read(channel:, inputs:, business_unit_id: nil, request_options: {})
          #
          # @param channel [Symbol, HubSpotSDK::Models::BatchInputString::Channel] Query param
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param business_unit_id [Integer] Query param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicStatusBulkResponse]
          #
          # @see HubSpotSDK::Models::CommunicationPreferences::Statuses::BatchReadParams
          def read(params)
            query_params = [:channel, :business_unit_id]
            parsed, options = HubSpotSDK::CommunicationPreferences::Statuses::BatchReadParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "communication-preferences/2026-03/statuses/batch/read",
              query: query.transform_keys(business_unit_id: "businessUnitId"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse,
              options: options
            )
          end

          # Unsubscribe a set of contacts from all email subscriptions.
          #
          # @overload unsubscribe_all(channel:, inputs:, business_unit_id: nil, verbose: nil, request_options: {})
          #
          # @param channel [Symbol, HubSpotSDK::Models::BatchInputString::Channel] Query param
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param business_unit_id [Integer] Query param
          #
          # @param verbose [Boolean] Query param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse]
          #
          # @see HubSpotSDK::Models::CommunicationPreferences::Statuses::BatchUnsubscribeAllParams
          def unsubscribe_all(params)
            query_params = [:channel, :business_unit_id, :verbose]
            parsed, options =
              HubSpotSDK::CommunicationPreferences::Statuses::BatchUnsubscribeAllParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "communication-preferences/2026-03/statuses/batch/unsubscribe-all",
              query: query.transform_keys(business_unit_id: "businessUnitId"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::CommunicationPreferences::Statuses::BatchUpdateStatusesParams}
          # for more details.
          #
          # Update the subscription status for a set of contacts.
          #
          # @overload update_statuses(inputs:, request_options: {})
          #
          # @param inputs [Array<HubSpotSDK::Models::CommunicationPreferences::PublicStatusRequest>] An array of PublicStatusRequest objects, each representing a subscription status
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus]
          #
          # @see HubSpotSDK::Models::CommunicationPreferences::Statuses::BatchUpdateStatusesParams
          def update_statuses(params)
            parsed, options =
              HubSpotSDK::CommunicationPreferences::Statuses::BatchUpdateStatusesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "communication-preferences/2026-03/statuses/batch/write",
              body: parsed,
              model: HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
