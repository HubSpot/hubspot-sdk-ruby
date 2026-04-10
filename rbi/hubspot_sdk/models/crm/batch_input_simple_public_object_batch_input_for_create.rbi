# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectBatchInputForCreate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::BatchInputSimplePublicObjectBatchInputForCreate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubSpotSDK::Crm::SimplePublicObjectBatchInputForCreate]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Crm::SimplePublicObjectBatchInputForCreate::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubSpotSDK::Crm::SimplePublicObjectBatchInputForCreate]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
