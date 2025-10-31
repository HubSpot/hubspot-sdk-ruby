# typed: strong

module HubspotSDK
  module Models
    class BatchInputPropertyCreate < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::BatchInputPropertyCreate,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[HubspotSDK::PropertyCreate]) }
      attr_accessor :inputs

      sig do
        params(inputs: T::Array[HubspotSDK::PropertyCreate::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(inputs:)
      end

      sig { override.returns({ inputs: T::Array[HubspotSDK::PropertyCreate] }) }
      def to_hash
      end
    end
  end
end
