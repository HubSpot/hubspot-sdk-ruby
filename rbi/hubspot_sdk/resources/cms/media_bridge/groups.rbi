# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Groups
          # Create a new property group for the specified object type.
          sig do
            params(
              object_type: String,
              app_id: Integer,
              label: String,
              name: String,
              display_order: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PropertyGroup)
          end
          def create(
            # Path param: The object type to create the new property group for.
            object_type,
            # Path param: The appId for the media bridge app. It is possible to have multiple
            # apps in your developer account that use the media bridge.
            app_id:,
            # Body param
            label:,
            # Body param
            name:,
            # Body param
            display_order: nil,
            request_options: {}
          )
          end

          # Get the property groups for a specified object type.
          sig do
            params(
              object_type: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::CollectionResponsePropertyGroupNoPaging)
          end
          def list(
            # The type of object to get the property groups for.
            object_type,
            # The appId for the media bridge app. It is possible to have multiple apps in your
            # developer account that use the media bridge.
            app_id:,
            request_options: {}
          )
          end

          # Delete an existing property group by name
          sig do
            params(
              group_name: String,
              app_id: Integer,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_by_name(
            # The name of the property group to be deleted.
            group_name,
            # The appId for the media bridge app. It is possible to have multiple apps in your
            # developer account that use the media bridge.
            app_id:,
            # The object type for the property group
            object_type:,
            request_options: {}
          )
          end

          # Get the details of an existing property group by name.
          sig do
            params(
              group_name: String,
              app_id: Integer,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PropertyGroup)
          end
          def get_by_name(
            # The name for the property group you want to get the details for.
            group_name,
            # The appId for the media bridge app. It is possible to have multiple apps in your
            # developer account that use the media bridge.
            app_id:,
            # The object type for the property group.
            object_type:,
            request_options: {}
          )
          end

          # Update an existing property group by name.
          sig do
            params(
              group_name: String,
              app_id: Integer,
              object_type: String,
              display_order: Integer,
              label: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PropertyGroup)
          end
          def update_by_name(
            # Path param: The name of the property group to update.
            group_name,
            # Path param: The appId for the media bridge app. It is possible to have multiple
            # apps in your developer account that use the media bridge.
            app_id:,
            # Path param: The object type for the property group.
            object_type:,
            # Body param
            display_order: nil,
            # Body param
            label: nil,
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
