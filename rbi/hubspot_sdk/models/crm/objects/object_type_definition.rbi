# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        class ObjectTypeDefinition < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Objects::ObjectTypeDefinition,
                HubspotSDK::Internal::AnyHash
              )
            end

          # A unique ID for this object type. Will be defined as {meta-type}-{unique ID}.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(HubspotSDK::ObjectTypeDefinitionLabels) }
          attr_reader :labels

          sig do
            params(labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash).void
          end
          attr_writer :labels

          # A unique name for this object. For internal use only.
          sig { returns(String) }
          attr_accessor :name

          # The names of properties that should be **required** when creating an object of
          # this type.
          sig { returns(T::Array[String]) }
          attr_accessor :required_properties

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # When the object type was created.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(String)) }
          attr_reader :fully_qualified_name

          sig { params(fully_qualified_name: String).void }
          attr_writer :fully_qualified_name

          sig { returns(T.nilable(String)) }
          attr_reader :object_type_id

          sig { params(object_type_id: String).void }
          attr_writer :object_type_id

          # The ID of the account that this object type is specific to.
          sig { returns(T.nilable(Integer)) }
          attr_reader :portal_id

          sig { params(portal_id: Integer).void }
          attr_writer :portal_id

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

          # When the object type was last updated.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # Defines an object type.
          sig do
            params(
              id: String,
              labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
              name: String,
              required_properties: T::Array[String],
              archived: T::Boolean,
              created_at: Time,
              description: String,
              fully_qualified_name: String,
              object_type_id: String,
              portal_id: Integer,
              primary_display_property: String,
              searchable_properties: T::Array[String],
              secondary_display_properties: T::Array[String],
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # A unique ID for this object type. Will be defined as {meta-type}-{unique ID}.
            id:,
            labels:,
            # A unique name for this object. For internal use only.
            name:,
            # The names of properties that should be **required** when creating an object of
            # this type.
            required_properties:,
            archived: nil,
            # When the object type was created.
            created_at: nil,
            description: nil,
            fully_qualified_name: nil,
            object_type_id: nil,
            # The ID of the account that this object type is specific to.
            portal_id: nil,
            # The name of the primary property for this object. This will be displayed as
            # primary on the HubSpot record page for this object type.
            primary_display_property: nil,
            # Names of properties that will be indexed for this object type in by HubSpot's
            # product search.
            searchable_properties: nil,
            # The names of secondary properties for this object. These will be displayed as
            # secondary on the HubSpot record page for this object type.
            secondary_display_properties: nil,
            # When the object type was last updated.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                labels: HubspotSDK::ObjectTypeDefinitionLabels,
                name: String,
                required_properties: T::Array[String],
                archived: T::Boolean,
                created_at: Time,
                description: String,
                fully_qualified_name: String,
                object_type_id: String,
                portal_id: Integer,
                primary_display_property: String,
                searchable_properties: T::Array[String],
                secondary_display_properties: T::Array[String],
                updated_at: Time
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
