# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowV3Request < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BatchInputHubDBTableRowV3Request,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Cms::HubDBTableRowV3Request]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::Cms::HubDBTableRowV3Request::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::Cms::HubDBTableRowV3Request] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
