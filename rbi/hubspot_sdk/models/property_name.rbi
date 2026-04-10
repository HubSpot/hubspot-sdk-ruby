# typed: strong

module HubSpotSDK
  module Models
    class PropertyName < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::PropertyName, HubSpotSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig { params(name: String).returns(T.attached_class) }
      def self.new(name:)
      end

      sig { override.returns({ name: String }) }
      def to_hash
      end
    end
  end
end
