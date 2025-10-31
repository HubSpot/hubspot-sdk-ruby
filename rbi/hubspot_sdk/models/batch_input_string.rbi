# typed: strong

module HubspotSDK
  module Models
    class BatchInputString < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::BatchInputString, HubspotSDK::Internal::AnyHash)
        end

      # Strings to input.
      sig { returns(T::Array[String]) }
      attr_accessor :inputs

      # Wrapper for providing an array of strings as inputs.
      sig { params(inputs: T::Array[String]).returns(T.attached_class) }
      def self.new(
        # Strings to input.
        inputs:
      )
      end

      sig { override.returns({ inputs: T::Array[String] }) }
      def to_hash
      end
    end
  end
end
