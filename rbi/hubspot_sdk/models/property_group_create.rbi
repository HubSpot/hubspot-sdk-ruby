# typed: strong

module HubSpotSDK
  module Models
    class PropertyGroupCreate < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::PropertyGroupCreate, HubSpotSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :label

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(Integer)) }
      attr_reader :display_order

      sig { params(display_order: Integer).void }
      attr_writer :display_order

      sig do
        params(label: String, name: String, display_order: Integer).returns(
          T.attached_class
        )
      end
      def self.new(label:, name:, display_order: nil)
      end

      sig do
        override.returns(
          { label: String, name: String, display_order: Integer }
        )
      end
      def to_hash
      end
    end
  end
end
