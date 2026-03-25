# typed: strong

module HubspotSDK
  module Models
    class ObjectTypeDefinitionLabels < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::ObjectTypeDefinitionLabels,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :plural

      sig { params(plural: String).void }
      attr_writer :plural

      sig { returns(T.nilable(String)) }
      attr_reader :singular

      sig { params(singular: String).void }
      attr_writer :singular

      sig { params(plural: String, singular: String).returns(T.attached_class) }
      def self.new(plural: nil, singular: nil)
      end

      sig { override.returns({ plural: String, singular: String }) }
      def to_hash
      end
    end
  end
end
