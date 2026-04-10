# typed: strong

module HubSpotSDK
  module Models
    class BatchInputString < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::BatchInputString, HubSpotSDK::Internal::AnyHash)
        end

      # Strings to input.
      sig { returns(T::Array[String]) }
      attr_accessor :inputs

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
