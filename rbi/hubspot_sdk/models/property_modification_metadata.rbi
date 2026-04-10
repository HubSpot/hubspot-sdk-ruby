# typed: strong

module HubSpotSDK
  module Models
    class PropertyModificationMetadata < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::PropertyModificationMetadata,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :archivable

      sig { returns(T::Boolean) }
      attr_accessor :read_only_definition

      sig { returns(T::Boolean) }
      attr_accessor :read_only_value

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :read_only_options

      sig { params(read_only_options: T::Boolean).void }
      attr_writer :read_only_options

      sig do
        params(
          archivable: T::Boolean,
          read_only_definition: T::Boolean,
          read_only_value: T::Boolean,
          read_only_options: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        archivable:,
        read_only_definition:,
        read_only_value:,
        read_only_options: nil
      )
      end

      sig do
        override.returns(
          {
            archivable: T::Boolean,
            read_only_definition: T::Boolean,
            read_only_value: T::Boolean,
            read_only_options: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
