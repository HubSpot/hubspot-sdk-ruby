# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchInputSimplePublicObjectBatchInputForCreate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchInputSimplePublicObjectBatchInputForCreate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::CRM::SimplePublicObjectBatchInputForCreate]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::CRM::SimplePublicObjectBatchInputForCreate::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubspotSDK::CRM::SimplePublicObjectBatchInputForCreate]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
