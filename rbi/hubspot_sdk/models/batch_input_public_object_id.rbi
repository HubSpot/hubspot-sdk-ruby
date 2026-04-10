# typed: strong

module HubSpotSDK
  module Models
    class BatchInputPublicObjectID < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::BatchInputPublicObjectID,
            HubSpotSDK::Internal::AnyHash
          )
        end

      # An array of deal split inputs
      sig { returns(T::Array[HubSpotSDK::PublicObjectID]) }
      attr_accessor :inputs

      sig do
        params(inputs: T::Array[HubSpotSDK::PublicObjectID::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # An array of deal split inputs
        inputs:
      )
      end

      sig { override.returns({ inputs: T::Array[HubSpotSDK::PublicObjectID] }) }
      def to_hash
      end
    end
  end
end
