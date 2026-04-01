# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class FeatureFlags
        # @return [HubspotSDK::Resources::Crm::FeatureFlags::Batch]
        attr_reader :batch

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Crm::FeatureFlagUpdateParams} for more details.
        #
        # Set a feature flag for an app. For example, update the `hs-hide-crm-cards`
        # flag's `defaultState` to `ON` to hide classic CRM cards from new installs.
        #
        # @overload update(flag_name, app_id:, default_state:, override_state: nil, request_options: {})
        #
        # @param flag_name [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param default_state [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::DefaultState] Body param: The state that the flag should have if there are no overrides for a
        #
        # @param override_state [Symbol, HubspotSDK::Models::Crm::FlagPutRequest::OverrideState] Body param: A flag value that supercedes all other overrides, including portal-l
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::FlagResponse]
        #
        # @see HubspotSDK::Models::Crm::FeatureFlagUpdateParams
        def update(flag_name, params)
          parsed, options = HubspotSDK::Crm::FeatureFlagUpdateParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["feature-flags/2026-03/%1$s/flags/%2$s", app_id, flag_name],
            body: parsed,
            model: HubspotSDK::Crm::FlagResponse,
            options: options
          )
        end

        # Delete a feature flag in an app. For example, delete the `hs-release-app-cards`
        # flag after all accounts have been migrated.
        #
        # @overload delete(flag_name, app_id:, request_options: {})
        #
        # @param flag_name [String]
        # @param app_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::FlagResponse]
        #
        # @see HubspotSDK::Models::Crm::FeatureFlagDeleteParams
        def delete(flag_name, params)
          parsed, options = HubspotSDK::Crm::FeatureFlagDeleteParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["feature-flags/2026-03/%1$s/flags/%2$s", app_id, flag_name],
            model: HubspotSDK::Crm::FlagResponse,
            options: options
          )
        end

        # Delete an account-level flag state for a specific HubSpot account. No request
        # body is included.
        #
        # @overload delete_portal_state(portal_id, app_id:, flag_name:, request_options: {})
        #
        # @param portal_id [Integer]
        # @param app_id [Integer]
        # @param flag_name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PortalFlagStateResponse]
        #
        # @see HubspotSDK::Models::Crm::FeatureFlagDeletePortalStateParams
        def delete_portal_state(portal_id, params)
          parsed, options = HubspotSDK::Crm::FeatureFlagDeletePortalStateParams.dump_request(params)
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
            path: ["feature-flags/2026-03/%1$s/flags/%2$s/portals/%3$s", app_id, flag_name, portal_id],
            model: HubspotSDK::Crm::PortalFlagStateResponse,
            options: options
          )
        end

        # Retrieve the current status of the app's feature flags. No request body is
        # included.
        #
        # @overload get(flag_name, app_id:, request_options: {})
        #
        # @param flag_name [String]
        # @param app_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::FlagResponse]
        #
        # @see HubspotSDK::Models::Crm::FeatureFlagGetParams
        def get(flag_name, params)
          parsed, options = HubspotSDK::Crm::FeatureFlagGetParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["feature-flags/2026-03/%1$s/flags/%2$s", app_id, flag_name],
            model: HubspotSDK::Crm::FlagResponse,
            options: options
          )
        end

        # Retrieve the account-level flag state of a specific HubSpot account.
        #
        # @overload get_portal_state(portal_id, app_id:, flag_name:, request_options: {})
        #
        # @param portal_id [Integer]
        # @param app_id [Integer]
        # @param flag_name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PortalFlagStateResponse]
        #
        # @see HubspotSDK::Models::Crm::FeatureFlagGetPortalStateParams
        def get_portal_state(portal_id, params)
          parsed, options = HubspotSDK::Crm::FeatureFlagGetPortalStateParams.dump_request(params)
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
            path: ["feature-flags/2026-03/%1$s/flags/%2$s/portals/%3$s", app_id, flag_name, portal_id],
            model: HubspotSDK::Crm::PortalFlagStateResponse,
            options: options
          )
        end

        # @overload list_all(app_id, request_options: {})
        #
        # @param app_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::FlagsForAppResponse]
        #
        # @see HubspotSDK::Models::Crm::FeatureFlagListAllParams
        def list_all(app_id, params = {})
          @client.request(
            method: :get,
            path: ["feature-flags/2026-03/%1$s/flags/all", app_id],
            model: HubspotSDK::Crm::FlagsForAppResponse,
            options: params[:request_options]
          )
        end

        # Retrieve a list of HubSpot accounts with an account-level flag setting for the
        # specified app. No request body is included.
        #
        # @overload list_portals(flag_name, app_id:, limit: nil, start_portal_id: nil, request_options: {})
        #
        # @param flag_name [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param limit [Integer] Query param: The maximum number of results to display per page.
        #
        # @param start_portal_id [Integer] Query param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PortalFlagStateBatchResponse]
        #
        # @see HubspotSDK::Models::Crm::FeatureFlagListPortalsParams
        def list_portals(flag_name, params)
          parsed, options = HubspotSDK::Crm::FeatureFlagListPortalsParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["feature-flags/2026-03/%1$s/flags/%2$s/portals", app_id, flag_name],
            query: query.transform_keys(start_portal_id: "startPortalId"),
            model: HubspotSDK::Crm::PortalFlagStateBatchResponse,
            options: options
          )
        end

        # Specify an account-level flag state for a specific HubSpot account.
        #
        # @overload update_portal_state(portal_id, app_id:, flag_name:, flag_state:, request_options: {})
        #
        # @param portal_id [Integer] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param flag_name [String] Path param
        #
        # @param flag_state [Symbol, HubspotSDK::Models::Crm::PortalFlagStatePutRequest::FlagState] Body param: The state that the given flag should be in for this portal
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::PortalFlagStateResponse]
        #
        # @see HubspotSDK::Models::Crm::FeatureFlagUpdatePortalStateParams
        def update_portal_state(portal_id, params)
          parsed, options = HubspotSDK::Crm::FeatureFlagUpdatePortalStateParams.dump_request(params)
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
            path: ["feature-flags/2026-03/%1$s/flags/%2$s/portals/%3$s", app_id, flag_name, portal_id],
            body: parsed,
            model: HubspotSDK::Crm::PortalFlagStateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::Crm::FeatureFlags::Batch.new(client: client)
        end
      end
    end
  end
end
