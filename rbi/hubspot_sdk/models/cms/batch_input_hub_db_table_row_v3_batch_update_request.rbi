# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowV3BatchUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BatchInputHubDBTableRowV3BatchUpdateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Cms::HubDBTableRowV3BatchUpdateRequest])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Cms::HubDBTableRowV3BatchUpdateRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubSpotSDK::Cms::HubDBTableRowV3BatchUpdateRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
