# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowV3Request < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BatchInputHubDBTableRowV3Request,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Cms::HubDBTableRowV3Request]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubSpotSDK::Cms::HubDBTableRowV3Request::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubSpotSDK::Cms::HubDBTableRowV3Request] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
