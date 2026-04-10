# typed: strong

module HubSpotSDK
  module Models
    class PropertyGroupUpdate < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::PropertyGroupUpdate, HubSpotSDK::Internal::AnyHash)
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :display_order

      sig { params(display_order: Integer).void }
      attr_writer :display_order

      sig { returns(T.nilable(String)) }
      attr_reader :label

      sig { params(label: String).void }
      attr_writer :label

      sig do
        params(display_order: Integer, label: String).returns(T.attached_class)
      end
      def self.new(display_order: nil, label: nil)
      end

      sig { override.returns({ display_order: Integer, label: String }) }
      def to_hash
      end
    end
  end
end
