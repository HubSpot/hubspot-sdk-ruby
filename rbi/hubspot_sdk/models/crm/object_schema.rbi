# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ObjectSchema < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::ObjectSchema, HubspotSDK::Internal::AnyHash)
          end

        # A unique ID for this schema's object type. Will be defined as
        # {meta-type}-{unique ID}.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :allows_sensitive_properties

        sig { returns(T::Boolean) }
        attr_accessor :archived

        # Associations defined for a given object type.
        sig { returns(T::Array[HubspotSDK::AssociationDefinition]) }
        attr_accessor :associations

        # An assigned unique ID for the object, including portal ID and object name.
        sig { returns(String) }
        attr_accessor :fully_qualified_name

        sig { returns(HubspotSDK::ObjectTypeDefinitionLabels) }
        attr_reader :labels

        sig do
          params(labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash).void
        end
        attr_writer :labels

        # A unique name for the schema's object type.
        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object_type_id

        # Properties defined for this object type.
        sig { returns(T::Array[HubspotSDK::Crm::Property]) }
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

        # When the object schema was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :created_by_user_id

        sig { params(created_by_user_id: Integer).void }
        attr_writer :created_by_user_id

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

        # When the object schema was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_by_user_id

        sig { params(updated_by_user_id: Integer).void }
        attr_writer :updated_by_user_id

        sig do
          params(
            id: String,
            allows_sensitive_properties: T::Boolean,
            archived: T::Boolean,
            associations: T::Array[HubspotSDK::AssociationDefinition::OrHash],
            fully_qualified_name: String,
            labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
            name: String,
            object_type_id: String,
            properties: T::Array[HubspotSDK::Crm::Property::OrHash],
            required_properties: T::Array[String],
            searchable_properties: T::Array[String],
            secondary_display_properties: T::Array[String],
            created_at: Time,
            created_by_user_id: Integer,
            description: String,
            primary_display_property: String,
            updated_at: Time,
            updated_by_user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique ID for this schema's object type. Will be defined as
          # {meta-type}-{unique ID}.
          id:,
          allows_sensitive_properties:,
          archived:,
          # Associations defined for a given object type.
          associations:,
          # An assigned unique ID for the object, including portal ID and object name.
          fully_qualified_name:,
          labels:,
          # A unique name for the schema's object type.
          name:,
          object_type_id:,
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
          # When the object schema was created.
          created_at: nil,
          created_by_user_id: nil,
          description: nil,
          # The name of the primary property for this object. This will be displayed as
          # primary on the HubSpot record page for this object type.
          primary_display_property: nil,
          # When the object schema was last updated.
          updated_at: nil,
          updated_by_user_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              allows_sensitive_properties: T::Boolean,
              archived: T::Boolean,
              associations: T::Array[HubspotSDK::AssociationDefinition],
              fully_qualified_name: String,
              labels: HubspotSDK::ObjectTypeDefinitionLabels,
              name: String,
              object_type_id: String,
              properties: T::Array[HubspotSDK::Crm::Property],
              required_properties: T::Array[String],
              searchable_properties: T::Array[String],
              secondary_display_properties: T::Array[String],
              created_at: Time,
              created_by_user_id: Integer,
              description: String,
              primary_display_property: String,
              updated_at: Time,
              updated_by_user_id: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
