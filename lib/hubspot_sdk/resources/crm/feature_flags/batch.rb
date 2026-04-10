# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class FeatureFlags
        class Batch
          # Delete an account-level flag state for multiple HubSpot accounts at once. Use
          # this endpoint to manage flag exposure for groups of HubSpot accounts.
          #
          # @overload delete(flag_name, app_id:, portal_ids:, request_options: {})
          #
          # @param flag_name [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param portal_ids [Array<Integer>] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::PortalFlagStateBatchResponse]
          #
          # @see HubSpotSDK::Models::Crm::FeatureFlags::BatchDeleteParams
          def delete(flag_name, params)
            parsed, options = HubSpotSDK::Crm::FeatureFlags::BatchDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["feature-flags/2026-03/%1$s/flags/%2$s/portals/batch/delete", app_id, flag_name],
              body: parsed,
              model: HubSpotSDK::Crm::PortalFlagStateBatchResponse,
              options: options
            )
          end

          # Set the portal flag state for multiple HubSpot accounts at once. Use this
          # endpoint to manage flag exposure for groups of HubSpot accounts.
          #
          # @overload upsert(flag_name, app_id:, portal_states:, request_options: {})
          #
          # @param flag_name [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param portal_states [Array<HubSpotSDK::Models::Crm::BatchPortalEntry>] Body param
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::PortalFlagStateBatchResponse]
          #
          # @see HubSpotSDK::Models::Crm::FeatureFlags::BatchUpsertParams
          def upsert(flag_name, params)
            parsed, options = HubSpotSDK::Crm::FeatureFlags::BatchUpsertParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["feature-flags/2026-03/%1$s/flags/%2$s/portals/batch/upsert", app_id, flag_name],
              body: parsed,
              model: HubSpotSDK::Crm::PortalFlagStateBatchResponse,
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
