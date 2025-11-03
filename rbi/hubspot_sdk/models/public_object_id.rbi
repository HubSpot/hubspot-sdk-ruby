# typed: strong

module HubspotSDK
  module Models
    class PublicObjectID < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicObjectID, HubspotSDK::Internal::AnyHash)
        end

      # The unique ID that identifies an object.
      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # The unique ID that identifies an object.
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
