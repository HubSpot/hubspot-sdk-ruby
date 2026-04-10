# typed: strong

module HubSpotSDK
  module Models
    class OptionInput < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::OptionInput, HubSpotSDK::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :display_order

      sig { returns(T::Boolean) }
      attr_accessor :hidden

      sig { returns(String) }
      attr_accessor :label

      sig { returns(String) }
      attr_accessor :value

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig do
        params(
          display_order: Integer,
          hidden: T::Boolean,
          label: String,
          value: String,
          description: String
        ).returns(T.attached_class)
      end
      def self.new(display_order:, hidden:, label:, value:, description: nil)
      end

      sig do
        override.returns(
          {
            display_order: Integer,
            hidden: T::Boolean,
            label: String,
            value: String,
            description: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
