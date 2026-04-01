# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BatchInputPropertyCreate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BatchInputPropertyCreate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Cms::PropertyCreate]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::Cms::PropertyCreate::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::Cms::PropertyCreate] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
