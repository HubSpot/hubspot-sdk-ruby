# typed: strong

module HubSpotSDK
  module Models
    class AssociationDefinitionEgg < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::AssociationDefinitionEgg,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :from_object_type_id

      sig { returns(String) }
      attr_accessor :to_object_type_id

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          from_object_type_id: String,
          to_object_type_id: String,
          name: String
        ).returns(T.attached_class)
      end
      def self.new(from_object_type_id:, to_object_type_id:, name: nil)
      end

      sig do
        override.returns(
          {
            from_object_type_id: String,
            to_object_type_id: String,
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
