# typed: strong

module HubspotSDK
  module Models
    class BatchInputPropertyName < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::BatchInputPropertyName,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[HubspotSDK::PropertyName]) }
      attr_accessor :inputs

      sig do
        params(inputs: T::Array[HubspotSDK::PropertyName::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(inputs:)
      end

      sig { override.returns({ inputs: T::Array[HubspotSDK::PropertyName] }) }
      def to_hash
      end
    end
  end
end
