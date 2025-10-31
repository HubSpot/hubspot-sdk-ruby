# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class ObjectSchema < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::ObjectSchema,
                HubspotSDK::Internal::AnyHash
              )
            end

          # A unique ID for this schema's object type. Will be defined as
          # {meta-type}-{unique ID}.
          sig { returns(String) }
          attr_accessor :id

          # Associations defined for a given object type.
          sig { returns(T::Array[HubspotSDK::Events::AssociationDefinition]) }
          attr_accessor :associations

          sig { returns(HubspotSDK::ObjectTypeDefinitionLabels) }
          attr_reader :labels

          sig do
            params(labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash).void
          end
          attr_writer :labels

          # A unique name for the schema's object type.
          sig { returns(String) }
          attr_accessor :name

          # Properties defined for this object type.
          sig { returns(T::Array[HubspotSDK::Property]) }
          attr_accessor :properties

          # The names of properties that should be **required** when creating an object of
          # this type.
          sig { returns(T::Array[String]) }
          attr_accessor :required_properties

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

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

          # An assigned unique ID for the object, including portal ID and object name.
          sig { returns(T.nilable(String)) }
          attr_reader :fully_qualified_name

          sig { params(fully_qualified_name: String).void }
          attr_writer :fully_qualified_name

          sig { returns(T.nilable(String)) }
          attr_reader :object_type_id

          sig { params(object_type_id: String).void }
          attr_writer :object_type_id

          # The name of the primary property for this object. This will be displayed as
          # primary on the HubSpot record page for this object type.
          sig { returns(T.nilable(String)) }
          attr_reader :primary_display_property

          sig { params(primary_display_property: String).void }
          attr_writer :primary_display_property

          # Names of properties that will be indexed for this object type in by HubSpot's
          # product search.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :searchable_properties

          sig { params(searchable_properties: T::Array[String]).void }
          attr_writer :searchable_properties

          # The names of secondary properties for this object. These will be displayed as
          # secondary on the HubSpot record page for this object type.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :secondary_display_properties

          sig { params(secondary_display_properties: T::Array[String]).void }
          attr_writer :secondary_display_properties

          # When the object schema was last updated.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig { returns(T.nilable(Integer)) }
          attr_reader :updated_by_user_id

          sig { params(updated_by_user_id: Integer).void }
          attr_writer :updated_by_user_id

          # Defines an object schema, including its properties and associations.
          sig do
            params(
              id: String,
              associations:
                T::Array[HubspotSDK::Events::AssociationDefinition::OrHash],
              labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
              name: String,
              properties: T::Array[HubspotSDK::Property::OrHash],
              required_properties: T::Array[String],
              archived: T::Boolean,
              created_at: Time,
              created_by_user_id: Integer,
              description: String,
              fully_qualified_name: String,
              object_type_id: String,
              primary_display_property: String,
              searchable_properties: T::Array[String],
              secondary_display_properties: T::Array[String],
              updated_at: Time,
              updated_by_user_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # A unique ID for this schema's object type. Will be defined as
            # {meta-type}-{unique ID}.
            id:,
            # Associations defined for a given object type.
            associations:,
            labels:,
            # A unique name for the schema's object type.
            name:,
            # Properties defined for this object type.
            properties:,
            # The names of properties that should be **required** when creating an object of
            # this type.
            required_properties:,
            archived: nil,
            # When the object schema was created.
            created_at: nil,
            created_by_user_id: nil,
            description: nil,
            # An assigned unique ID for the object, including portal ID and object name.
            fully_qualified_name: nil,
            object_type_id: nil,
            # The name of the primary property for this object. This will be displayed as
            # primary on the HubSpot record page for this object type.
            primary_display_property: nil,
            # Names of properties that will be indexed for this object type in by HubSpot's
            # product search.
            searchable_properties: nil,
            # The names of secondary properties for this object. These will be displayed as
            # secondary on the HubSpot record page for this object type.
            secondary_display_properties: nil,
            # When the object schema was last updated.
            updated_at: nil,
            updated_by_user_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                associations:
                  T::Array[HubspotSDK::Events::AssociationDefinition],
                labels: HubspotSDK::ObjectTypeDefinitionLabels,
                name: String,
                properties: T::Array[HubspotSDK::Property],
                required_properties: T::Array[String],
                archived: T::Boolean,
                created_at: Time,
                created_by_user_id: Integer,
                description: String,
                fully_qualified_name: String,
                object_type_id: String,
                primary_display_property: String,
                searchable_properties: T::Array[String],
                secondary_display_properties: T::Array[String],
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
end
