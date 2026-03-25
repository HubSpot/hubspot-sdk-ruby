# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class ObjectSchemas
        sig { returns(HubspotSDK::Resources::Crm::ObjectSchemas::Batch) }
        attr_reader :batch

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
          ).returns(HubspotSDK::ObjectSchema)
        end
        def create(
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
          description: nil,
          # The name of the primary property for this object. This will be displayed as
          # primary on the HubSpot record page for this object type.
          primary_display_property: nil,
          request_options: {}
        )
        end

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

        sig do
          params(
            archived: T::Boolean,
            include_association_definitions: T::Boolean,
            include_audit_metadata: T::Boolean,
            include_property_definitions: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::CollectionResponseObjectSchemaNoPaging)
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

        sig do
          params(
            object_type: String,
            archived: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
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
          association_identifier,
          object_type:,
          request_options: {}
        )
        end

        sig do
          params(
            object_type: String,
            include_association_definitions: T::Boolean,
            include_audit_metadata: T::Boolean,
            include_property_definitions: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::ObjectSchema)
        end
        def get(
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
