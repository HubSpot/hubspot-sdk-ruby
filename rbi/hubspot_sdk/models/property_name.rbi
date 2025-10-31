# typed: strong

module HubspotSDK
  module Models
    class PropertyName < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PropertyName, HubspotSDK::Internal::AnyHash)
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
