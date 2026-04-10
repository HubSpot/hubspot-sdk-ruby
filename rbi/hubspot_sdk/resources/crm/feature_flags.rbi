# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class FeatureFlags
        sig { returns(HubSpotSDK::Resources::Crm::FeatureFlags::Batch) }
        attr_reader :batch

        # Set a feature flag for an app. For example, update the `hs-hide-crm-cards`
        # flag's `defaultState` to `ON` to hide classic CRM cards from new installs.
        sig do
          params(
            flag_name: String,
            app_id: Integer,
            default_state:
              HubSpotSDK::Crm::FlagPutRequest::DefaultState::OrSymbol,
            override_state:
              HubSpotSDK::Crm::FlagPutRequest::OverrideState::OrSymbol,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::FlagResponse)
        end
        def update(
          # Path param
          flag_name,
          # Path param
          app_id:,
          # Body param: The state that the flag should have if there are no overrides for a
          # particular portal
          default_state:,
          # Body param: A flag value that supercedes all other overrides, including
          # portal-level values. Mostly used for things like emergency overrides
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
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::FlagResponse)
        end
        def delete(flag_name, app_id:, request_options: {})
        end

        # Delete an account-level flag state for a specific HubSpot account. No request
        # body is included.
        sig do
          params(
            portal_id: Integer,
            app_id: Integer,
            flag_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PortalFlagStateResponse)
        end
        def delete_portal_state(
          portal_id,
          app_id:,
          flag_name:,
          request_options: {}
        )
        end

        # Retrieve the current status of the app's feature flags. No request body is
        # included.
        sig do
          params(
            flag_name: String,
            app_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::FlagResponse)
        end
        def get(flag_name, app_id:, request_options: {})
        end

        # Retrieve the account-level flag state of a specific HubSpot account.
        sig do
          params(
            portal_id: Integer,
            app_id: Integer,
            flag_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PortalFlagStateResponse)
        end
        def get_portal_state(
          portal_id,
          app_id:,
          flag_name:,
          request_options: {}
        )
        end

        sig do
          params(
            app_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::FlagsForAppResponse)
        end
        def list_all(app_id, request_options: {})
        end

        # Retrieve a list of HubSpot accounts with an account-level flag setting for the
        # specified app. No request body is included.
        sig do
          params(
            flag_name: String,
            app_id: Integer,
            limit: Integer,
            start_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PortalFlagStateBatchResponse)
        end
        def list_portals(
          # Path param
          flag_name,
          # Path param
          app_id:,
          # Query param: The maximum number of results to display per page.
          limit: nil,
          # Query param
          start_portal_id: nil,
          request_options: {}
        )
        end

        # Specify an account-level flag state for a specific HubSpot account.
        sig do
          params(
            portal_id: Integer,
            app_id: Integer,
            flag_name: String,
            flag_state:
              HubSpotSDK::Crm::PortalFlagStatePutRequest::FlagState::OrSymbol,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PortalFlagStateResponse)
        end
        def update_portal_state(
          # Path param
          portal_id,
          # Path param
          app_id:,
          # Path param
          flag_name:,
          # Body param: The state that the given flag should be in for this portal
          flag_state:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
