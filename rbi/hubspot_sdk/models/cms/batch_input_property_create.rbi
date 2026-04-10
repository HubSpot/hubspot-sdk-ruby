# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BatchInputPropertyCreate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BatchInputPropertyCreate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Cms::PropertyCreate]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubSpotSDK::Cms::PropertyCreate::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubSpotSDK::Cms::PropertyCreate] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
