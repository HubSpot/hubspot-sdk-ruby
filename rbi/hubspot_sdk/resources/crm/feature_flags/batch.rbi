# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class FeatureFlags
        class Batch
          # Delete an account-level flag state for multiple HubSpot accounts at once. Use
          # this endpoint to manage flag exposure for groups of HubSpot accounts.
          sig do
            params(
              flag_name: String,
              app_id: Integer,
              portal_ids: T::Array[Integer],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::PortalFlagStateBatchResponse)
          end
          def delete(
            # Path param
            flag_name,
            # Path param
            app_id:,
            # Body param
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
                T::Array[HubSpotSDK::Crm::BatchPortalEntry::OrHash],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::PortalFlagStateBatchResponse)
          end
          def upsert(
            # Path param
            flag_name,
            # Path param
            app_id:,
            # Body param
            portal_states:,
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
end
