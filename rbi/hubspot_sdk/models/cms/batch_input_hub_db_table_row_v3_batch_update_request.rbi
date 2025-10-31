# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowV3BatchUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BatchInputHubDBTableRowV3BatchUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Cms::HubDBTableRowV3BatchUpdateRequest])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Cms::HubDBTableRowV3BatchUpdateRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubspotSDK::Cms::HubDBTableRowV3BatchUpdateRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
