# typed: strong

module HubSpotSDK
  module Models
    class BaseAssociationDefinition < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::BaseAssociationDefinition,
            HubSpotSDK::Internal::AnyHash
          )
        end

      # The unique ID of the associated object (e.g., a contact ID).
      sig { returns(String) }
      attr_accessor :id

      # The ID of the source object type (e.g., 0-1 for contacts).
      sig { returns(String) }
      attr_accessor :from_object_type_id

      # The ID of the destination object type (e.g., 0-3 for deals).
      sig { returns(String) }
      attr_accessor :to_object_type_id

      # The timestamp when the association was created, in ISO 8601 format.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # For labeled association types, the internal name of the association.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The timestamp when the last update was made to an association, in ISO 8601
      # format.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The definition of an association
      sig do
        params(
          id: String,
          from_object_type_id: String,
          to_object_type_id: String,
          created_at: Time,
          name: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique ID of the associated object (e.g., a contact ID).
        id:,
        # The ID of the source object type (e.g., 0-1 for contacts).
        from_object_type_id:,
        # The ID of the destination object type (e.g., 0-3 for deals).
        to_object_type_id:,
        # The timestamp when the association was created, in ISO 8601 format.
        created_at: nil,
        # For labeled association types, the internal name of the association.
        name: nil,
        # The timestamp when the last update was made to an association, in ISO 8601
        # format.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            from_object_type_id: String,
            to_object_type_id: String,
            created_at: Time,
            name: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
