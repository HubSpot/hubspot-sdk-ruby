# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class ObjectSchemaEgg < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::ObjectSchemaEgg,
                HubspotSDK::Internal::AnyHash
              )
            end

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
          sig do
            returns(
              T::Array[HubspotSDK::CRM::Objects::ObjectTypePropertyCreate]
            )
          end
          attr_accessor :properties

          # The names of properties that should be **required** when creating an object of
          # this type.
          sig { returns(T::Array[String]) }
          attr_accessor :required_properties

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

          # Defines a new object type, its properties, and associations.
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
              secondary_display_properties: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
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
            secondary_display_properties: nil
          )
          end

          sig do
            override.returns(
              {
                associated_objects: T::Array[String],
                labels: HubspotSDK::ObjectTypeDefinitionLabels,
                name: String,
                properties:
                  T::Array[HubspotSDK::CRM::Objects::ObjectTypePropertyCreate],
                required_properties: T::Array[String],
                description: String,
                primary_display_property: String,
                searchable_properties: T::Array[String],
                secondary_display_properties: T::Array[String]
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
