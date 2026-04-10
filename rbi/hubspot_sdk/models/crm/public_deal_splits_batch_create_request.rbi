# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicDealSplitsBatchCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicDealSplitsBatchCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of deal split inputs
        sig do
          returns(T::Array[HubSpotSDK::Crm::PublicDealSplitsCreateRequest])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubSpotSDK::Crm::PublicDealSplitsCreateRequest::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of deal split inputs
          inputs:
        )
        end

        sig do
          override.returns(
            { inputs: T::Array[HubSpotSDK::Crm::PublicDealSplitsCreateRequest] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
