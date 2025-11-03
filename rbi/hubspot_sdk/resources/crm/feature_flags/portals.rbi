# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class FeatureFlags
        class Portals
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
            # Path param: The ID of the account that installed the app.
            portal_id,
            # Path param: The ID of the app.
            app_id:,
            # Path param: The name of the flag, either `hs-release-app-cards` or
            # `hs-hide-crm-cards`.
            flag_name:,
            # Body param:
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
          def delete(
            # The ID of the account that installed the app.
            portal_id,
            # The ID of the app.
            app_id:,
            # The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-cards`.
            flag_name:,
            request_options: {}
          )
          end

          # Delete an account-level flag state for multiple HubSpot accounts at once. Use
          # this endpoint to manage flag exposure for groups of HubSpot accounts.
          sig do
            params(
              flag_name: String,
              app_id: Integer,
              portal_ids: T::Array[Integer],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PortalFlagStateBatchResponse)
          end
          def batch_delete(
            # Path param: The name of the flag, either `hs-release-app-cards` or
            # `hs-hide-crm-cards`.
            flag_name,
            # Path param: The ID of the app.
            app_id:,
            # Body param:
            portal_ids:,
            request_options: {}
          )
          end

          # Set the portal flag state for multiple HubSpot accounts at once. Use this
          # endpoint to manage flag exposure for groups of HubSpot accounts.
          sig do
            params(
              flag_name: String,
              app_id: Integer,
              portal_states:
                T::Array[HubspotSDK::Crm::BatchPortalEntry::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PortalFlagStateBatchResponse)
          end
          def batch_upsert(
            # Path param: The name of the flag, either `hs-release-app-cards` or
            # `hs-hide-crm-cards`.
            flag_name,
            # Path param: The ID of the app.
            app_id:,
            # Body param:
            portal_states:,
            request_options: {}
          )
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
          def get(
            # The ID of the account that installed the app.
            portal_id,
            # The ID of the app.
            app_id:,
            # The name of the flag, either `hs-release-app-cards` or `hs-hide-crm-cards`.
            flag_name:,
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
