# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class ObjectSchemas
        sig { returns(HubspotSDK::Resources::Crm::ObjectSchemas::Batch) }
        attr_reader :batch

        # Create a new custom object schema by defining its properties and associations.
        sig do
          params(
            allows_sensitive_properties: T::Boolean,
            associated_objects: T::Array[String],
            labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
            name: String,
            properties:
              T::Array[HubspotSDK::Crm::ObjectTypePropertyCreate::OrHash],
            required_properties: T::Array[String],
            searchable_properties: T::Array[String],
            secondary_display_properties: T::Array[String],
            description: String,
            primary_display_property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ObjectSchema)
        end
        def create(
          # Determines if the object type can include properties that are marked as
          # sensitive.
          allows_sensitive_properties:,
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
          # Names of properties that will be indexed for this object type in by HubSpot's
          # product search.
          searchable_properties:,
          # The names of secondary properties for this object. These will be displayed as
          # secondary on the HubSpot record page for this object type.
          secondary_display_properties:,
          # A brief explanation of the object type.
          description: nil,
          # The name of the primary property for this object. This will be displayed as
          # primary on the HubSpot record page for this object type.
          primary_display_property: nil,
          request_options: {}
        )
        end

        # Update attributes of a custom object schema, such as properties and labels,
        # using the object type ID or fully qualified name.
        sig do
          params(
            object_type: String,
            clear_description: T::Boolean,
            allows_sensitive_properties: T::Boolean,
            description: String,
            labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
            primary_display_property: String,
            required_properties: T::Array[String],
            restorable: T::Boolean,
            searchable_properties: T::Array[String],
            secondary_display_properties: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::ObjectTypeDefinition)
        end
        def update(
          # Fully qualified name or object type ID of your schema.
          object_type,
          clear_description:,
          allows_sensitive_properties: nil,
          description: nil,
          labels: nil,
          primary_display_property: nil,
          required_properties: nil,
          restorable: nil,
          searchable_properties: nil,
          secondary_display_properties: nil,
          request_options: {}
        )
        end

        # Retrieve all custom object schemas, with options to include property
        # definitions, association definitions, and audit metadata.
        sig do
          params(
            archived: T::Boolean,
            include_association_definitions: T::Boolean,
            include_audit_metadata: T::Boolean,
            include_property_definitions: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::CollectionResponseObjectSchemaNoPaging)
        end
        def list(
          # Whether to return only results that have been archived.
          archived: nil,
          include_association_definitions: nil,
          include_audit_metadata: nil,
          include_property_definitions: nil,
          request_options: {}
        )
        end

        # Remove a custom object schema from the account using its object type ID or fully
        # qualified name.
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

        # Create a new association between the specified object type and another object
        # type. This operation requires the definition of the association attributes, such
        # as the primary and target object type IDs.
        sig do
          params(
            object_type: String,
            from_object_type_id: String,
            to_object_type_id: String,
            name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::AssociationDefinition)
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

        # Remove an association between two object types identified by the association
        # identifier and object type. This operation is irreversible and will permanently
        # delete the specified association.
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

        # Retrieve details of a custom object schema, including its properties and
        # associations, using the object type ID or fully qualified name.
        sig do
          params(
            object_type: String,
            include_association_definitions: T::Boolean,
            include_audit_metadata: T::Boolean,
            include_property_definitions: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ObjectSchema)
        end
        def get(
          # Fully qualified name or object type ID of your schema.
          object_type,
          include_association_definitions: nil,
          include_audit_metadata: nil,
          include_property_definitions: nil,
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
