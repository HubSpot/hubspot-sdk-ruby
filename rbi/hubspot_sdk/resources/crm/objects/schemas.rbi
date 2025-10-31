# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Objects
        class Schemas
          sig do
            params(
              associated_objects: T::Array[String],
              labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
              name: String,
              properties:
                T::Array[
                  HubspotSDK::CRM::Objects::ObjectTypePropertyCreate::OrHash
                ],
              required_properties: T::Array[String],
              description: String,
              primary_display_property: String,
              searchable_properties: T::Array[String],
              secondary_display_properties: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::Objects::ObjectSchema)
          end
          def create(
            # Associations defined for this object type.
            associated_objects:,
            labels:,
            # A unique name for this object. For internal use only.
            name:,
            # Properties defined for this object type.
            properties:,
            # The names of properties that should be **required** when creating an object of
            # this type.
            required_properties:,
            description: nil,
            # The name of the primary property for this object. This will be displayed as
            # primary on the HubSpot record page for this object type.
            primary_display_property: nil,
            # Names of properties that will be indexed for this object type in by HubSpot's
            # product search.
            searchable_properties: nil,
            # The names of secondary properties for this object. These will be displayed as
            # secondary on the HubSpot record page for this object type.
            secondary_display_properties: nil,
            request_options: {}
          )
          end

          sig do
            params(
              object_type: String,
              clear_description: T::Boolean,
              description: String,
              labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
              primary_display_property: String,
              required_properties: T::Array[String],
              restorable: T::Boolean,
              searchable_properties: T::Array[String],
              secondary_display_properties: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::Objects::ObjectTypeDefinition)
          end
          def update(
            # Fully qualified name or object type ID of your schema.
            object_type,
            clear_description: nil,
            description: nil,
            labels: nil,
            # The name of the primary property for this object. This will be displayed as
            # primary on the HubSpot record page for this object type.
            primary_display_property: nil,
            # The names of properties that should be **required** when creating an object of
            # this type.
            required_properties: nil,
            restorable: nil,
            # Names of properties that will be indexed for this object type in by HubSpot's
            # product search.
            searchable_properties: nil,
            # The names of secondary properties for this object. These will be displayed as
            # secondary on the HubSpot record page for this object type.
            secondary_display_properties: nil,
            request_options: {}
          )
          end

          sig do
            params(
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CollectionResponseObjectSchemaNoPaging)
          end
          def list(
            # Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          sig do
            params(
              object_type: String,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Fully qualified name or object type ID of your schema.
            object_type,
            # Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          sig do
            params(
              object_type: String,
              from_object_type_id: String,
              to_object_type_id: String,
              name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Events::AssociationDefinition)
          end
          def create_association(
            # Fully qualified name or object type ID of your schema.
            object_type,
            from_object_type_id:,
            to_object_type_id:,
            name: nil,
            request_options: {}
          )
          end

          sig do
            params(
              association_identifier: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_association(
            # Unique ID of the association to remove.
            association_identifier,
            # Fully qualified name or object type ID of your schema.
            object_type:,
            request_options: {}
          )
          end

          sig do
            params(
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::Objects::ObjectSchema)
          end
          def get(
            # Fully qualified name or object type ID of your schema.
            object_type,
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
