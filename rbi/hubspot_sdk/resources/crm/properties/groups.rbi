# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Properties
        class Groups
          # Create and return a copy of a new property group.
          sig do
            params(
              object_type: String,
              label: String,
              name: String,
              display_order: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::PropertyGroup)
          end
          def create(
            object_type,
            label:,
            name:,
            display_order: nil,
            request_options: {}
          )
          end

          # Perform a partial update of a property group identified by {groupName}. Provided
          # fields will be overwritten.
          sig do
            params(
              group_name: String,
              object_type: String,
              display_order: Integer,
              label: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::PropertyGroup)
          end
          def update(
            # Path param
            group_name,
            # Path param
            object_type:,
            # Body param
            display_order: nil,
            # Body param
            label: nil,
            request_options: {}
          )
          end

          # Read all existing property groups for the specified object type and HubSpot
          # account.
          sig do
            params(
              object_type: String,
              locale: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CollectionResponsePropertyGroupNoPaging)
          end
          def list(object_type, locale: nil, request_options: {})
          end

          # Move a property group identified by {groupName} to the recycling bin.
          sig do
            params(
              group_name: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(group_name, object_type:, request_options: {})
          end

          # Read a property group identified by {groupName}.
          sig do
            params(
              group_name: String,
              object_type: String,
              locale: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::PropertyGroup)
          end
          def get(
            # Path param
            group_name,
            # Path param
            object_type:,
            # Query param
            locale: nil,
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
