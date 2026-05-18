# typed: strong

module HubSpotSDK
  module Models
    class PublicObjectID < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::PublicObjectID, HubSpotSDK::Internal::AnyHash)
        end

      # The unique identifier for the public object.
      sig { returns(String) }
      attr_accessor :id

      # Contains the Id of a Public Object
      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # The unique identifier for the public object.
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
