# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicDealSplitsBatchCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicDealSplitsBatchCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of deal split inputs
        sig do
          returns(T::Array[HubspotSDK::Crm::PublicDealSplitsCreateRequest])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubspotSDK::Crm::PublicDealSplitsCreateRequest::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of deal split inputs
          inputs:
        )
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::Crm::PublicDealSplitsCreateRequest] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
