# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class FeatureFlags
        class Portals
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateParams} for more details.
          #
          # Specify an account-level flag state for a specific HubSpot account.
          #
          # @overload update(portal_id, app_id:, flag_name:, flag_state:, request_options: {})
          #
          # @param portal_id [Integer] Path param: The ID of the account that installed the app.
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param flag_name [String] Path param: The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-
          #
          # @param flag_state [Symbol, HubspotSDK::Models::CRM::PortalFlagStatePutRequest::FlagState] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::PortalFlagStateResponse]
          #
          # @see HubspotSDK::Models::CRM::FeatureFlags::PortalUpdateParams
          def update(portal_id, params)
            parsed, options = HubspotSDK::CRM::FeatureFlags::PortalUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            flag_name =
              parsed.delete(:flag_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["feature-flags/v3/%1$s/flags/%2$s/portals/%3$s", app_id, flag_name, portal_id],
              body: parsed,
              model: HubspotSDK::CRM::PortalFlagStateResponse,
              options: options
            )
          end

          # Delete an account-level flag state for a specific HubSpot account. No request
          # body is included.
          #
          # @overload delete(portal_id, app_id:, flag_name:, request_options: {})
          #
          # @param portal_id [Integer] The ID of the account that installed the app.
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param flag_name [String] The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-cards`.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::PortalFlagStateResponse]
          #
          # @see HubspotSDK::Models::CRM::FeatureFlags::PortalDeleteParams
          def delete(portal_id, params)
            parsed, options = HubspotSDK::CRM::FeatureFlags::PortalDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            flag_name =
              parsed.delete(:flag_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["feature-flags/v3/%1$s/flags/%2$s/portals/%3$s", app_id, flag_name, portal_id],
              model: HubspotSDK::CRM::PortalFlagStateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::FeatureFlags::PortalBatchDeleteParams} for more
          # details.
          #
          # Delete an account-level flag state for multiple HubSpot accounts at once. Use
          # this endpoint to manage flag exposure for groups of HubSpot accounts.
          #
          # @overload batch_delete(flag_name, app_id:, portal_ids:, request_options: {})
          #
          # @param flag_name [String] Path param: The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param portal_ids [Array<Integer>] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::PortalFlagStateBatchResponse]
          #
          # @see HubspotSDK::Models::CRM::FeatureFlags::PortalBatchDeleteParams
          def batch_delete(flag_name, params)
            parsed, options = HubspotSDK::CRM::FeatureFlags::PortalBatchDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["feature-flags/v3/%1$s/flags/%2$s/portals/batch/delete", app_id, flag_name],
              body: parsed,
              model: HubspotSDK::CRM::PortalFlagStateBatchResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::FeatureFlags::PortalBatchUpsertParams} for more
          # details.
          #
          # Set the portal flag state for multiple HubSpot accounts at once. Use this
          # endpoint to manage flag exposure for groups of HubSpot accounts.
          #
          # @overload batch_upsert(flag_name, app_id:, portal_states:, request_options: {})
          #
          # @param flag_name [String] Path param: The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param portal_states [Array<HubspotSDK::Models::CRM::BatchPortalEntry>] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::PortalFlagStateBatchResponse]
          #
          # @see HubspotSDK::Models::CRM::FeatureFlags::PortalBatchUpsertParams
          def batch_upsert(flag_name, params)
            parsed, options = HubspotSDK::CRM::FeatureFlags::PortalBatchUpsertParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["feature-flags/v3/%1$s/flags/%2$s/portals/batch/upsert", app_id, flag_name],
              body: parsed,
              model: HubspotSDK::CRM::PortalFlagStateBatchResponse,
              options: options
            )
          end

          # Retrieve the account-level flag state of a specific HubSpot account.
          #
          # @overload get(portal_id, app_id:, flag_name:, request_options: {})
          #
          # @param portal_id [Integer] The ID of the account that installed the app.
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param flag_name [String] The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-cards`.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::PortalFlagStateResponse]
          #
          # @see HubspotSDK::Models::CRM::FeatureFlags::PortalGetParams
          def get(portal_id, params)
            parsed, options = HubspotSDK::CRM::FeatureFlags::PortalGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            flag_name =
              parsed.delete(:flag_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["feature-flags/v3/%1$s/flags/%2$s/portals/%3$s", app_id, flag_name, portal_id],
              model: HubspotSDK::CRM::PortalFlagStateResponse,
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
