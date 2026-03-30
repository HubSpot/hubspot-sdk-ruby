# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ObjectSchema < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::ObjectSchema, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :allows_sensitive_properties

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig { returns(T::Array[HubspotSDK::AssociationDefinition]) }
        attr_accessor :associations

        sig { returns(String) }
        attr_accessor :fully_qualified_name

        sig { returns(HubspotSDK::ObjectTypeDefinitionLabels) }
        attr_reader :labels

        sig do
          params(labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash).void
        end
        attr_writer :labels

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(T::Array[HubspotSDK::Cms::Property1]) }
        attr_accessor :properties

        sig { returns(T::Array[String]) }
        attr_accessor :required_properties

        sig { returns(T::Array[String]) }
        attr_accessor :searchable_properties

        sig { returns(T::Array[String]) }
        attr_accessor :secondary_display_properties

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

        sig { returns(T.nilable(String)) }
        attr_reader :primary_display_property

        sig { params(primary_display_property: String).void }
        attr_writer :primary_display_property

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
            properties: T::Array[HubspotSDK::Cms::Property1::OrHash],
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
          id:,
          allows_sensitive_properties:,
          archived:,
          associations:,
          fully_qualified_name:,
          labels:,
          name:,
          object_type_id:,
          properties:,
          required_properties:,
          searchable_properties:,
          secondary_display_properties:,
          created_at: nil,
          created_by_user_id: nil,
          description: nil,
          primary_display_property: nil,
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
              properties: T::Array[HubspotSDK::Cms::Property1],
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
