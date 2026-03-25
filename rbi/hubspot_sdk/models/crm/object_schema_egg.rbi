# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ObjectSchemaEgg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ObjectSchemaEgg,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :allows_sensitive_properties

        # Associations defined for this object type.
        sig { returns(T::Array[String]) }
        attr_accessor :associated_objects

        sig { returns(HubspotSDK::ObjectTypeDefinitionLabels) }
        attr_reader :labels

        sig do
          params(labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash).void
        end
        attr_writer :labels

        # A unique name for this object. For internal use only.
        sig { returns(String) }
        attr_accessor :name

        # Properties defined for this object type.
        sig { returns(T::Array[HubspotSDK::Crm::ObjectTypePropertyCreate]) }
        attr_accessor :properties

        # The names of properties that should be **required** when creating an object of
        # this type.
        sig { returns(T::Array[String]) }
        attr_accessor :required_properties

        # Names of properties that will be indexed for this object type in by HubSpot's
        # product search.
        sig { returns(T::Array[String]) }
        attr_accessor :searchable_properties

        # The names of secondary properties for this object. These will be displayed as
        # secondary on the HubSpot record page for this object type.
        sig { returns(T::Array[String]) }
        attr_accessor :secondary_display_properties

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The name of the primary property for this object. This will be displayed as
        # primary on the HubSpot record page for this object type.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_display_property

        sig { params(primary_display_property: String).void }
        attr_writer :primary_display_property

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
            primary_display_property: String
          ).returns(T.attached_class)
        end
        def self.new(
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
          primary_display_property: nil
        )
        end

        sig do
          override.returns(
            {
              allows_sensitive_properties: T::Boolean,
              associated_objects: T::Array[String],
              labels: HubspotSDK::ObjectTypeDefinitionLabels,
              name: String,
              properties: T::Array[HubspotSDK::Crm::ObjectTypePropertyCreate],
              required_properties: T::Array[String],
              searchable_properties: T::Array[String],
              secondary_display_properties: T::Array[String],
              description: String,
              primary_display_property: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
