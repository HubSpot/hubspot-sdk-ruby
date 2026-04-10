# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BatchInputContentFolder < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BatchInputContentFolder,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Content folders to input.
        sig { returns(T::Array[HubSpotSDK::Cms::ContentFolder]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubSpotSDK::Cms::ContentFolder::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Content folders to input.
          inputs:
        )
        end

        sig do
          override.returns({ inputs: T::Array[HubSpotSDK::Cms::ContentFolder] })
        end
        def to_hash
        end
      end
    end
  end
end
