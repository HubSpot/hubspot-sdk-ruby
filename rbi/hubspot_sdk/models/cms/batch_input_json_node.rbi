# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BatchInputJsonNode < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BatchInputJsonNode,
              HubspotSDK::Internal::AnyHash
            )
          end

        # JSON nodes to input.
        sig { returns(T::Array[T.anything]) }
        attr_accessor :inputs

        sig { params(inputs: T::Array[T.anything]).returns(T.attached_class) }
        def self.new(
          # JSON nodes to input.
          inputs:
        )
        end

        sig { override.returns({ inputs: T::Array[T.anything] }) }
        def to_hash
        end
      end
    end
  end
end
