# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class FeatureFlags
        class Apps
          # Set a feature flag for an app. For example, update the `hs-hide-crm-cards`
          # flag's `defaultState` to `ON` to hide classic CRM cards from new installs.
          sig do
            params(
              flag_name: String,
              app_id: Integer,
              default_state:
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::DefaultState::OrSymbol,
              override_state:
                HubspotSDK::CRM::FeatureFlags::AppUpdateParams::OverrideState::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Models::CRM::FeatureFlags::AppUpdateResponse)
          end
          def update(
            # Path param: The name of the flag, either `hs-release-app-cards` or
            # `hs-hide-crm-cards`.
            flag_name,
            # Path param: The ID of the app.
            app_id:,
            # Body param:
            default_state:,
            # Body param:
            override_state: nil,
            request_options: {}
          )
          end

          # Delete a feature flag in an app. For example, delete the `hs-release-app-cards`
          # flag after all accounts have been migrated.
          sig do
            params(
              flag_name: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Models::CRM::FeatureFlags::AppDeleteResponse)
          end
          def delete(
            # The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-cards`.
            flag_name,
            # The ID of the app.
            app_id:,
            request_options: {}
          )
          end

          # Retrieve the current status of the app's feature flags. No request body is
          # included.
          sig do
            params(
              flag_name: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Models::CRM::FeatureFlags::AppGetResponse)
          end
          def get(
            # The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-cards`.
            flag_name,
            # The ID of the app.
            app_id:,
            request_options: {}
          )
          end

          # Retrieve a list of HubSpot accounts with an account-level flag setting for the
          # specified app. No request body is included.
          sig do
            params(
              flag_name: String,
              app_id: Integer,
              limit: Integer,
              start_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Models::CRM::FeatureFlags::AppListPortalsResponse
            )
          end
          def list_portals(
            # Path param: The name of the flag, either `hs-release-app-cards` or
            # `hs-hide-crm-cards`.
            flag_name,
            # Path param: The ID of the app.
            app_id:,
            # Query param: The maximum number of results to return in a single request.
            limit: nil,
            # Query param: The initial account ID for listing, enabling pagination.
            start_portal_id: nil,
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
