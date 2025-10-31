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
              app_id: String,
              label: String,
              name: String,
              display_order: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::PropertyGroup)
          end
          def create(
            # Path param:
            object_type,
            # Path param:
            app_id:,
            # Body param:
            label:,
            # Body param:
            name:,
            # Body param:
            display_order: nil,
            request_options: {}
          )
          end

          # Get the property groups for a specified object type.
          sig do
            params(
              object_type: String,
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Models::Cms::MediaBridge::GroupListResponse)
          end
          def list(object_type, app_id:, request_options: {})
          end

          # Delete an existing property group by name
          sig do
            params(
              group_name: String,
              app_id: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_by_name(
            group_name,
            app_id:,
            object_type:,
            request_options: {}
          )
          end

          # Get the details of an existing property group by name.
          sig do
            params(
              group_name: String,
              app_id: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::PropertyGroup)
          end
          def get_by_name(
            group_name,
            app_id:,
            object_type:,
            request_options: {}
          )
          end

          # Update an existing property group by name.
          sig do
            params(
              group_name: String,
              app_id: String,
              object_type: String,
              display_order: Integer,
              label: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::PropertyGroup)
          end
          def update_by_name(
            # Path param:
            group_name,
            # Path param:
            app_id:,
            # Path param:
            object_type:,
            # Body param:
            display_order: nil,
            # Body param:
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
