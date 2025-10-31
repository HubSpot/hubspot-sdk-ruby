# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class FeatureFlags
        class Apps
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::FeatureFlags::AppUpdateParams} for more details.
          #
          # Set a feature flag for an app. For example, update the `hs-hide-crm-cards`
          # flag's `defaultState` to `ON` to hide classic CRM cards from new installs.
          #
          # @overload update(flag_name, app_id:, default_state:, override_state: nil, request_options: {})
          #
          # @param flag_name [String] Path param: The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param default_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateParams::DefaultState] Body param:
          #
          # @param override_state [Symbol, HubspotSDK::Models::CRM::FeatureFlags::AppUpdateParams::OverrideState] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse]
          #
          # @see HubspotSDK::Models::CRM::FeatureFlags::AppUpdateParams
          def update(flag_name, params)
            parsed, options = HubspotSDK::CRM::FeatureFlags::AppUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["feature-flags/v3/%1$s/flags/%2$s", app_id, flag_name],
              body: parsed,
              model: HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse,
              options: options
            )
          end

          # Delete a feature flag in an app. For example, delete the `hs-release-app-cards`
          # flag after all accounts have been migrated.
          #
          # @overload delete(flag_name, app_id:, request_options: {})
          #
          # @param flag_name [String] The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-cards`.
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::FeatureFlags::AppDeleteResponse]
          #
          # @see HubspotSDK::Models::CRM::FeatureFlags::AppDeleteParams
          def delete(flag_name, params)
            parsed, options = HubspotSDK::CRM::FeatureFlags::AppDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["feature-flags/v3/%1$s/flags/%2$s", app_id, flag_name],
              model: HubspotSDK::Models::CRM::FeatureFlags::AppDeleteResponse,
              options: options
            )
          end

          # Retrieve the current status of the app's feature flags. No request body is
          # included.
          #
          # @overload get(flag_name, app_id:, request_options: {})
          #
          # @param flag_name [String] The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-cards`.
          #
          # @param app_id [Integer] The ID of the app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::FeatureFlags::AppGetResponse]
          #
          # @see HubspotSDK::Models::CRM::FeatureFlags::AppGetParams
          def get(flag_name, params)
            parsed, options = HubspotSDK::CRM::FeatureFlags::AppGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["feature-flags/v3/%1$s/flags/%2$s", app_id, flag_name],
              model: HubspotSDK::Models::CRM::FeatureFlags::AppGetResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsParams} for more details.
          #
          # Retrieve a list of HubSpot accounts with an account-level flag setting for the
          # specified app. No request body is included.
          #
          # @overload list_portals(flag_name, app_id:, limit: nil, start_portal_id: nil, request_options: {})
          #
          # @param flag_name [String] Path param: The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-
          #
          # @param app_id [Integer] Path param: The ID of the app.
          #
          # @param limit [Integer] Query param: The maximum number of results to return in a single request.
          #
          # @param start_portal_id [Integer] Query param: The initial account ID for listing, enabling pagination.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse]
          #
          # @see HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsParams
          def list_portals(flag_name, params)
            parsed, options = HubspotSDK::CRM::FeatureFlags::AppListPortalsParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["feature-flags/v3/%1$s/flags/%2$s/portals", app_id, flag_name],
              query: parsed.transform_keys(start_portal_id: "startPortalId"),
              model: HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse,
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
