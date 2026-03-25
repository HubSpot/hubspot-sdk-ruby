# typed: strong

module HubspotSDK
  module Models
    class BatchInputPublicObjectID < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::BatchInputPublicObjectID,
            HubspotSDK::Internal::AnyHash
          )
        end

      # An array of deal split inputs
      sig { returns(T::Array[HubspotSDK::PublicObjectID]) }
      attr_accessor :inputs

      sig do
        params(inputs: T::Array[HubspotSDK::PublicObjectID::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # An array of deal split inputs
        inputs:
      )
      end

      sig { override.returns({ inputs: T::Array[HubspotSDK::PublicObjectID] }) }
      def to_hash
      end
    end
  end
end
