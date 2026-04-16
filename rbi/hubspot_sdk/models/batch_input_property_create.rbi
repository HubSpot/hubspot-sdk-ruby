# typed: strong

module HubSpotSDK
  module Models
    class BatchInputPropertyCreate < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::BatchInputPropertyCreate,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[HubSpotSDK::PropertyCreate]) }
      attr_accessor :inputs

      sig do
        params(inputs: T::Array[HubSpotSDK::PropertyCreate::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(inputs:)
      end

      sig { override.returns({ inputs: T::Array[HubSpotSDK::PropertyCreate] }) }
      def to_hash
      end
    end
  end
end
