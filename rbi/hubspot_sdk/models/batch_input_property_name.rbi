# typed: strong

module HubSpotSDK
  module Models
    class BatchInputPropertyName < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::BatchInputPropertyName,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[HubSpotSDK::PropertyName]) }
      attr_accessor :inputs

      sig do
        params(inputs: T::Array[HubSpotSDK::PropertyName::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(inputs:)
      end

      sig { override.returns({ inputs: T::Array[HubSpotSDK::PropertyName] }) }
      def to_hash
      end
    end
  end
end
