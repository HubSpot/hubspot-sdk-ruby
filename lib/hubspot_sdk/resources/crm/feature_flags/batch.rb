# frozen_string_literal: true

module HubspotSDK
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::PortalFlagStateBatchResponse]
          #
          # @see HubspotSDK::Models::Crm::FeatureFlags::BatchDeleteParams
          def delete(flag_name, params)
            parsed, options = HubspotSDK::Crm::FeatureFlags::BatchDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["feature-flags/2026-03/%1$s/flags/%2$s/portals/batch/delete", app_id, flag_name],
              body: parsed,
              model: HubspotSDK::Crm::PortalFlagStateBatchResponse,
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
          # @param portal_states [Array<HubspotSDK::Models::Crm::BatchPortalEntry>] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::PortalFlagStateBatchResponse]
          #
          # @see HubspotSDK::Models::Crm::FeatureFlags::BatchUpsertParams
          def upsert(flag_name, params)
            parsed, options = HubspotSDK::Crm::FeatureFlags::BatchUpsertParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["feature-flags/2026-03/%1$s/flags/%2$s/portals/batch/upsert", app_id, flag_name],
              body: parsed,
              model: HubspotSDK::Crm::PortalFlagStateBatchResponse,
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
