# typed: strong

module HubspotSDK
  module Models
    class ObjectTypeDefinition < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::ObjectTypeDefinition, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Boolean) }
      attr_accessor :allows_sensitive_properties

      sig { returns(T::Boolean) }
      attr_accessor :archived

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

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(Integer)) }
      attr_reader :portal_id

      sig { params(portal_id: Integer).void }
      attr_writer :portal_id

      sig { returns(T.nilable(String)) }
      attr_reader :primary_display_property

      sig { params(primary_display_property: String).void }
      attr_writer :primary_display_property

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          allows_sensitive_properties: T::Boolean,
          archived: T::Boolean,
          fully_qualified_name: String,
          labels: HubspotSDK::ObjectTypeDefinitionLabels::OrHash,
          name: String,
          object_type_id: String,
          required_properties: T::Array[String],
          searchable_properties: T::Array[String],
          secondary_display_properties: T::Array[String],
          created_at: Time,
          description: String,
          portal_id: Integer,
          primary_display_property: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        allows_sensitive_properties:,
        archived:,
        fully_qualified_name:,
        labels:,
        name:,
        object_type_id:,
        required_properties:,
        searchable_properties:,
        secondary_display_properties:,
        created_at: nil,
        description: nil,
        portal_id: nil,
        primary_display_property: nil,
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            allows_sensitive_properties: T::Boolean,
            archived: T::Boolean,
            fully_qualified_name: String,
            labels: HubspotSDK::ObjectTypeDefinitionLabels,
            name: String,
            object_type_id: String,
            required_properties: T::Array[String],
            searchable_properties: T::Array[String],
            secondary_display_properties: T::Array[String],
            created_at: Time,
            description: String,
            portal_id: Integer,
            primary_display_property: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
