# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BatchInputContentFolder < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BatchInputContentFolder,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Content folders to input.
        sig { returns(T::Array[HubspotSDK::Cms::ContentFolder]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::Cms::ContentFolder::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Content folders to input.
          inputs:
        )
        end

        sig do
          override.returns({ inputs: T::Array[HubspotSDK::Cms::ContentFolder] })
        end
        def to_hash
        end
      end
    end
  end
end
