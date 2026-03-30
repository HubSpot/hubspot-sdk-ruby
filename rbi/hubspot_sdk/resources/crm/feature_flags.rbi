# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class FeatureFlags
        sig { returns(HubspotSDK::Resources::Crm::FeatureFlags::Batch) }
        attr_reader :batch

        # Specify an account-level flag state for a specific HubSpot account.
        sig do
          params(
            portal_id: Integer,
            app_id: Integer,
            flag_name: String,
            flag_state:
              HubspotSDK::Crm::PortalFlagStatePutRequest::FlagState::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PortalFlagStateResponse)
        end
        def update(
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

        # Delete an account-level flag state for a specific HubSpot account. No request
        # body is included.
        sig do
          params(
            portal_id: Integer,
            app_id: Integer,
            flag_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PortalFlagStateResponse)
        end
        def delete(portal_id, app_id:, flag_name:, request_options: {})
        end

        # Retrieve the account-level flag state of a specific HubSpot account.
        sig do
          params(
            portal_id: Integer,
            app_id: Integer,
            flag_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PortalFlagStateResponse)
        end
        def get(portal_id, app_id:, flag_name:, request_options: {})
        end

        sig do
          params(
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::FlagsForAppResponse)
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PortalFlagStateBatchResponse)
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

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
