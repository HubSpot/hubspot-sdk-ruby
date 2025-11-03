# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Schemas
          # Update the schema for an existing object type
          sig do
            params(
              object_type: String,
              app_id: String,
              clear_description: T::Boolean,
              description: String,
              labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
              primary_display_property: String,
              required_properties: T::Array[String],
              restorable: T::Boolean,
              searchable_properties: T::Array[String],
              secondary_display_properties: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Objects::ObjectTypeDefinition)
          end
          def update(
            # Path param:
            object_type,
            # Path param:
            app_id:,
            # Body param:
            clear_description: nil,
            # Body param:
            description: nil,
            # Body param:
            labels: nil,
            # Body param: The name of the primary property for this object. This will be
            # displayed as primary on the HubSpot record page for this object type.
            primary_display_property: nil,
            # Body param: The names of properties that should be **required** when creating an
            # object of this type.
            required_properties: nil,
            # Body param:
            restorable: nil,
            # Body param: Names of properties that will be indexed for this object type in by
            # HubSpot's product search.
            searchable_properties: nil,
            # Body param: The names of secondary properties for this object. These will be
            # displayed as secondary on the HubSpot record page for this object type.
            secondary_display_properties: nil,
            request_options: {}
          )
          end

          # Get the schemas for all object types.
          sig do
            params(
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CollectionResponseObjectSchemaNoPaging)
          end
          def list(app_id, request_options: {})
          end

          # Create a new association definition for the specified object type.
          sig do
            params(
              object_type: String,
              app_id: String,
              from_object_type_id: String,
              to_object_type_id: String,
              name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Events::AssociationDefinition)
          end
          def create_association(
            # Path param:
            object_type,
            # Path param:
            app_id:,
            # Body param:
            from_object_type_id:,
            # Body param:
            to_object_type_id:,
            # Body param:
            name: nil,
            request_options: {}
          )
          end

          # Delete an existing association definition for an object type.
          sig do
            params(
              association_id: String,
              app_id: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_association(
            association_id,
            app_id:,
            object_type:,
            request_options: {}
          )
          end

          # Get the schema for a specified object type.
          sig do
            params(
              object_type: String,
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Objects::ObjectSchema)
          end
          def get(object_type, app_id:, request_options: {})
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
